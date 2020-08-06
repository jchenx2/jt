import express from "express";

import Logger from "../logger";
import Axios from "../axios";
import BookInfo from "../book/bookInfo";

const router = express.Router();

const logger = new Logger("Scan");

router.get("/", (req, res) => {
	handleScan();
	res.status(200).send("OK");
});

async function handleScan(): Promise<void> {
	try {
		const st = Date.now();
		logger.d("start scan...");
		const response = await Axios.getInstance().getBooks();
		const books = response.data.result;
		for (const b of books) {
			try {
				const { bookid } = b;
				const [r1, r2] = await Promise.all([
					Axios.getInstance().getBookInfo(bookid),
					Axios.getInstance().getChapters(bookid),
				]);
				const book = new BookInfo(r1.data.result, r2.data.result);
				await book.insert();
			} catch (e) {
				logger.e(e);
			}
		}
		const et = Date.now();
		logger.d(`end scan,take ${(et - st) / 1000}s`);
	} catch (e) {
		logger.e(e);
	}
}

export default router;
