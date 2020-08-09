import JtFictionChapter from "../jt-fiction-chapter";

(async () => {
	try {
		await JtFictionChapter.update();
		process.exit();
	} catch (e) {
		console.log(e.message);
	}
})();
