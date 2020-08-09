import SqlClient from "../sql-client";

(async () => {
	try {
		console.log("cleaning jt_fiction...");
		let sql = "truncate table jt_fiction";
		await SqlClient.getInstance().query(sql);

		console.log("cleaning jt_fiction_chapter...");
		sql = "truncate table jt_fiction_chapter";
		await SqlClient.getInstance().query(sql);

		console.log("OK");

		process.exit();
	} catch (e) {
		console.log(e);
	}
})();
