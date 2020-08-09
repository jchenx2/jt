import express from "express";
import path from "path";
import fs from "fs";

const router = express.Router();

router.get("/:filename", async (req, res) => {
	try {
		const { filename } = req.params;
		const filepath = `${path.resolve(".", "download")}/${filename}`;
		res.set("content-type", "mimeType");
		const stream = fs.createReadStream(filepath);
		const responseData: any[] = [];
		if (stream) {
			stream.on("data", (chunk) => {
				responseData.push(chunk);
			});
			stream.on("end", () => {
				const finalData = Buffer.concat(responseData);
				res.write(finalData);
				res.end();
			});
		}
	} catch (e) {
		res.status(500).send(e);
	}
});

export default router;
