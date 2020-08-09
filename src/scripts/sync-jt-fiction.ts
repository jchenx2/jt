import JtFiction from "../jt-fiction";

(async () => {
	try {
		await JtFiction.update();
		process.exit();
	} catch (e) {
		console.log(e);
	}
})();
