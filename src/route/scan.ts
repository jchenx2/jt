import express from "express";
import path from "path";
import fs from "fs";

import Logger from "../logger";
import Axios from "../axios";
import JtFiction from "../jt-fiction";
import AppConfig from "../app-config";
import JtFictionChapter from "../jt-fiction-chapter";

const router = express.Router();

const logger = new Logger("Scan");

router.get("/books", async (req, res) => {
	try {
		await getBookInfo();
		res.status(200).send("OK");
	} catch (e) {
		res.status(500).send(e);
	}
});

router.get("/chapters", async (req, res) => {
	try {
		await getChapters();
		res.status(200).send("OK");
	} catch (e) {
		res.status(500).send(e);
	}
});

async function getBooks(): Promise<any[]> {
	try {
		const response = await Axios.getInstance().getBooks();
		const books = response.data.result;
		return books;
	} catch (e) {
		return [];
	}
}

async function getBookInfo() {
	logger.d(`get book info - start`);
	const books = await getBooks();
	for (const b of books) {
		const { bookid, bookname } = b;
		try {
			logger.d(`get book info, bookid=${bookid}, bookname=${bookname}`);
			const instance = await JtFiction.getBookByName(bookname);
			if (instance == null || instance.state === 0) {
				const [r1, r2] = await Promise.all([
					Axios.getInstance().getBookInfo(bookid),
					Axios.getInstance().getChapters(bookid),
				]);
				const { bookpic } = r1.data.result;
				const newbookpic: string = await download(bookpic, bookid);
				const book = new JtFiction(
					r1.data.result,
					r2.data.result,
					newbookpic
				);
				await book.insert();
			}
		} catch (e) {
			logger.e(
				`get book info fail, bookid=${bookid}, bookname=${bookname}, message=${e.message}`
			);
		}
	}
	logger.d(`get book info - finish, books=${JSON.stringify(books, null, 2)}`);
}

async function getChapters() {
	logger.d(`get chapters - start`);
	const books = await getBooks();
	for (const b of books) {
		const { bookid, bookname } = b;
		try {
			logger.d(`get chapters, bookid=${bookid}, bookname=${bookname}`);
			const response = await Axios.getInstance().getChapters(bookid);
			const volumelist: any[] = response.data.result;
			for (const v of volumelist) {
				const { chapterlist } = v;
				for (const c of chapterlist) {
					const { book_id, chapterid, chaptername } = c;
					try {
						logger.d(
							`get chapter info, bookid=${book_id}, chapterid=${chapterid}, chaptername=${chaptername}`
						);
						const exists = await JtFictionChapter.exists(
							book_id,
							chaptername
						);
						if (exists) {
							return;
						}
						const r = await Axios.getInstance().getChapterInfo(
							book_id,
							chapterid
						);
						const chapter = new JtFictionChapter({
							book_id,
							chaptername,
							content: r.data.result.content,
						});
						await chapter.insert();
					} catch (e) {
						logger.e(
							`get chapter info fail, bookid=${book_id}, chapterid=${chapterid}, chaptername=${chaptername}, message=${e.message}`
						);
					}
				}
			}
		} catch (e) {
			logger.e(
				`get chapters fail, bookid=${bookid}, chaptername=${bookname}, message=${e.message}`
			);
		}
	}
	logger.d(`get chapters - finish, books=${JSON.stringify(books, null, 2)}`);
}

async function download(url: string, id: number): Promise<string> {
	const { host, port } = AppConfig.getInstance().httpConfig;
	const downloadFolder = path.resolve(".", "download");
	if (!fs.existsSync(downloadFolder)) {
		fs.mkdirSync(downloadFolder);
	}
	const filename = `${id}_${path.basename(url)}`;
	const filepath = `${downloadFolder}/${filename}`;
	const bookpic = `${host}:${port}/download/${filename}`;
	if (fs.existsSync(filepath)) {
		return bookpic;
	}
	const writer = fs.createWriteStream(filepath);
	const response = await Axios.axios.get(url, { responseType: "stream" });
	response.data.pipe(writer);
	return new Promise((resolve, reject) => {
		writer.on("finish", () => resolve(bookpic));
		writer.on("error", reject);
	});
}

export default router;
