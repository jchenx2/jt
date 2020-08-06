// -- ----------------------------
// -- Table structure for jt_fiction
// -- ----------------------------
// DROP TABLE IF EXISTS `jt_fiction`;
// CREATE TABLE `jt_fiction`  (
//   `id` int(11) NOT NULL AUTO_INCREMENT,
//   `type_id` int(11) NULL DEFAULT 0 COMMENT '分类id',
//   `cover_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '封面图',
//   `author` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '作者',
//   `see_num` int(11) NULL DEFAULT 0 COMMENT '查看数量',
//   `score` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '分数',
//   `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '名字',
//   `words_num` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字数',
//   `introduction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '简介',
//   `currency_income_num` int(11) NULL DEFAULT 0 COMMENT '阅读币收入总数',
//   `is_end` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '是否已完结',
//   `is_home` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '是否主页推荐',
//   `free_chapter_num` int(11) NULL DEFAULT 0 COMMENT '免费章节数',
//   `chapter_price` int(11) NULL DEFAULT 0 COMMENT '每章节阅读币数量',
//   `state` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '状态 ',
//   `created_time` datetime(0) NULL DEFAULT NULL COMMENT '写入时间',
//   `updated_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
//   `channels` int(11) NULL DEFAULT 0 COMMENT '频道：男频，女频',
//   PRIMARY KEY (`id`) USING BTREE
// ) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '小说信息表' ROW_FORMAT = Dynamic;

// const book = {
// 	bookid: "1135",
// 	bookname: "坑爹儿子影后妈咪",
// 	words: "378774",
// 	authorname: "你别皱眉",
// 	state: 1,
// 	bookType: "现代言情",
// 	keywords: "萌宝|影后|总裁",
// 	chaptercount: "190",
// 	ischarge: 1,
// 	bookpic: "http://www.01kanshu.com/Upload/Book/zhong/5be94f9d9b56f.jpg",
// 	intro:
// 		"一场计谋的欢愉，她偷种而去。五年后改头换面，携子复仇而来。他却还在苦寻自己的初恋，不料初恋已经带着坑爹儿子找上门。\r\n“记得好好表现，妈咪计划的成败靠你了！要不然到时候跑路把你丢了。”她揪着儿子的小鼻子威胁中带着满满的宠溺。\r\n“知道啦！我的宝贝妈咪，我才不会让你有机会丢下我，期待我的表现吧！”他老神定定的昂着头。\r\n偷听墙角的柏总裁俊唇一勾，“一大一小还想算计我？等我慢慢设局捉你们回家！”",
// 	updateTime: "2018-12-26 22:28:55",
// 	updateCid: "144861",
// 	updateChapter: "第190章 柏先生，请多指教（结局）",
// 	gender: "2",
// };

import SqlClient from "../sqlClient";

export default class BookInfo {
	// tslint:disable-next-line: variable-name
	type_id: number; // 分类id

	// tslint:disable-next-line: variable-name
	cover_img: string; // 封面图

	author: string; // 作者

	// tslint:disable-next-line: variable-name
	see_num: number = 0; // 查看数量

	score: number = 0.0; // 分数

	name: string; // 名字

	// tslint:disable-next-line: variable-name
	words_num: string; // 字数

	introduction: string; // 简介

	// tslint:disable-next-line: variable-name
	currency_income_num: number = 0; // 阅读币收入总数

	// tslint:disable-next-line: variable-name
	is_end: string; // 是否已完结

	// tslint:disable-next-line: variable-name
	is_home: string = "0"; // 是否主页推荐

	// tslint:disable-next-line: variable-name
	free_chapter_num: number = 0; // 免费章节数

	// tslint:disable-next-line: variable-name
	chapter_price: number = 0; // 每章节阅读币数量

	state: string; // 状态

	// tslint:disable-next-line: variable-name
	created_time: string; // 写入时间

	// tslint:disable-next-line: variable-name
	updated_time: string; // 更新时间

	channels: number; // 频道：男频，女频

	constructor(bookinfo: any, volumelist: any[]) {
		this.type_id = getTypeId(bookinfo.bookType);
		this.cover_img = bookinfo.bookpic;
		this.author = bookinfo.authorname;
		this.name = bookinfo.bookname;
		this.words_num = bookinfo.words;
		this.introduction = bookinfo.intro;
		this.is_end = bookinfo.state;
		this.state = bookinfo.state;
		this.created_time = "NULL";
		this.updated_time = bookinfo.updateTime;
		this.channels = bookinfo.gender;

		this.free_chapter_num = getFreeChapterNum(volumelist);
	}

	async insert() {
		const sql = `INSERT INTO \`jt_fiction\` VALUES (0, ${this.type_id}, "${this.cover_img}", "${this.author}", ${this.see_num}, ${this.score}, "${this.name}", "${this.words_num}", "${this.introduction}", ${this.currency_income_num}, "${this.is_end}", "${this.is_home}", ${this.free_chapter_num}, ${this.chapter_price}, "${this.state}", ${this.created_time}, "${this.updated_time}", ${this.channels})`;

		console.log(sql);
		return SqlClient.getInstance().query(sql);
	}
}

function getTypeId(type: string): number {
	let id: number = 0;
	switch (type) {
		case "现代言情":
			id = 1;
			break;
		case "古代言情":
			id = 2;
			break;
		case "都市婚姻":
			id = 3;
			break;
		case "职场言情":
			id = 4;
			break;
		case "男生都市":
			id = 5;
			break;
		case "男生玄幻":
			id = 6;
			break;
		case "女生短篇":
			id = 7;
			break;
		case "男生游戏":
			id = 18;
			break;
		case "男生历史":
			id = 19;
			break;
		case "男生仙侠":
			id = 20;
			break;
		case "男生悬疑":
			id = 21;
			break;
		case "男生其他":
			id = 22;
			break;
		default:
			break;
	}
	return id;
}

function getFreeChapterNum(volumelist: any[]): number {
	let num = 0;
	for (const volume of volumelist) {
		const { chapterlist } = volume;
		num += chapterlist.filter((b: any) => b.the_price === "0").length;
	}
	return num;
}
