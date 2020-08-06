import express from "express";

import Logger from "../logger";
import Axios from "../axios";
import BookInfo from "../book/bookInfo";
import SqlClient from "../sqlClient";

const router = express.Router();

const logger = new Logger("Scan");

router.get("/", async (req, res) => {
	try {
		await handleScan();
		const sql = `SELECT * from jt_fiction`;
		const result = await SqlClient.getInstance().query(sql);
		res.status(200).send(JSON.stringify(result, null, 2));
	} catch (e) {
		res.status(500).send(e);
	}
});

async function handleScan(): Promise<void> {
	const st = Date.now();
	logger.d("start...");
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
	const take = (et - st) / 1000;
	logger.d(`stop,take ${take}s`);
}

export default router;
