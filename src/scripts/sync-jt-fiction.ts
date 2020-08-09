import fs from "fs";
import path from "path";

import Axios from "../axios";
import Logger from "../logger";
import JtFiction from "../jt-fiction";
import AppConfig from "../app-config";

const logger = new Logger("jt-fiction");

async function getBooks(): Promise<any[]> {
	try {
		const response = await Axios.getInstance().getBooks();
		const books = response.data.result;
		return books;
	} catch (e) {
		return [];
	}
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

(async () => {
	try {
		await getBookInfo();
		process.exit();
	} catch (e) {
		logger.e(e.message);
	}
})();
