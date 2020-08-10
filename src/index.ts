import express from "express";
import bodyParser from "body-parser";
import compression from "compression";
import schedule from "node-schedule";

import HttpServer from "./http-server";

import query from "./route/query";
import download from "./route/download";

import Logger from "./logger";
import JtFiction from "./jt-fiction";
import JtFictionChapter from "./jt-fiction-chapter";
import AppConfig from "./app-config";

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
app.use("/download", download);

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
		const server: any = await HttpServer.getInstance(app).startUp();
		logger.i(`app server listening on port ${server.config.port}.`);
		const { hour, minute } = AppConfig.getInstance().schedule;
		schedule.scheduleJob({ hour, minute }, task); // 20:00:00 every day
	} catch (e) {
		logger.e(e);
	}
})();

async function task() {
	if (AppConfig.getInstance().debug) {
		await JtFiction.clean();
		await JtFictionChapter.clean();
	}
	JtFiction.update();
	JtFictionChapter.update();
}
