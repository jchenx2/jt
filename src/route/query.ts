import express from "express";
import SqlClient from "../sqlClient";

const router = express.Router();

router.get("/:db", async (req, res) => {
	try {
		const { db } = req.params;
		const sql = `SELECT * from ${db}`;
		const result = await SqlClient.getInstance().query(sql);
		res.status(200).send(JSON.stringify(result, null, 2));
	} catch (e) {
		res.status(500).send(e);
	}
});

export default router;
