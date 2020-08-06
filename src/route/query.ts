import express from "express";
import SqlClient from "../sqlClient";

const router = express.Router();

router.get("/:tablename", async (req, res) => {
	try {
		const { tablename } = req.params;
		const sql = `SELECT * from ${tablename}`;
		const result = await SqlClient.getInstance().query(sql);
		res.status(200).send(JSON.stringify(result, null, 2));
	} catch (e) {
		res.status(500).send(e);
	}
});

export default router;
