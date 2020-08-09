import JtFiction from "../jt-fiction";
import JtFictionChapter from "../jt-fiction-chapter";

(async () => {
	try {
		console.log("cleaning jt_fiction...");
		await JtFiction.clean();

		console.log("cleaning jt_fiction_chapter...");
		await JtFictionChapter.clean();

		console.log("OK");

		process.exit();
	} catch (e) {
		console.log(e);
	}
})();
