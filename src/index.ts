import express from "express";
import bodyParser from "body-parser";
import compression from "compression";

import SqlClient from "./sqlClient";
import HttpServer from "./httpServer";

import scan from "./route/scan";
import query from "./route/query";

import Logger from "./logger";

const app = express();

const logger = new Logger("App");

app.all("*", (_, res, next) => {
	res.header("Access-Control-Allow-Origin", "*");
	res.header(
		"Access-Control-Allow-Headers",
		"Content-Type,Content-Length, Authorization, Accept,X-Requested-With"
	);
	res.header("Access-Control-Allow-Methods", "PUT,POST,GET,DELETE,OPTIONS");
	next();
});

app.use(logger.useLogger());

app.use(compression()); // gzip

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));

app.use("/query", query);
app.use("/scan", scan);

app.use((req, res, next) => {
	const err = new Error("Not Found");
	next(err);
});

app.use((err: any, req: any, res: any, next: any) => {
	const { url } = req;
	const { message } = err;
	logger.e({ url, message });
	res.status(404).send(message);
});

(async () => {
	try {
		const httpServer = HttpServer.getInstance(app);
		await httpServer.startUp();
		logger.i(`app server listening on port ${httpServer.config.port}.`);
	} catch (e) {
		logger.e(e);
	}
})();

async function testSql1() {
	try {
		const sql = `INSERT INTO \`jt_fiction\` VALUES (0, 15, 'https://xiaoshuo.huapiaoliang.com/jt-api/public/uploads/2020-08-02/aB3pqAFyWLuChtXzM5er7MwZ0r0MsxUMYpdpqIJt.jpeg', '阿迷', 0, 5.00, 'hhhhhh', '10万', '【此中滋味，甘苦共尝。】你尝过被生活打压的滋味吗？\n\n他们都是普通人，却又不普通。精神上都有缺陷的两个人相遇，在一次又一次地放弃与被放弃中，拉紧对方的手，他们互相救赎，他们是彼此的光。\n\n脑子不好顾清欢×狂野男孩俞彬子\n人前高冷人后易傻乐疯狂宠溺攻×人前狂野人后也狂野撩人不自知受\n\n生活流水账，现实风治愈向，1v1，攻追受，he。\n\n甜甜甜甜甜甜甜甜白月光与初恋没有狗血雷点！俩智障儿童互相救赎后的咕噜咕噜爱情故事！', 0, '0', '0', 100, 35, '1', '2020-08-02 09:40:56', NULL, 2)`;
		await SqlClient.getInstance().query(sql);
	} catch (e) {
		console.log(e);
	}
}

async function testSql2() {
	try {
		const sql = "select * from jt_fiction";
		const result = await SqlClient.getInstance().query(sql);
		console.log(result);
	} catch (e) {
		console.log(e);
	}
}
