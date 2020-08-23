import JtFictionChapter from "../jt-fiction-chapter";

(async () => {
	try {
		await JtFictionChapter.getRemoteChapter(
			1,
			732,
			90322,
			"第二十章 一张相片",
			0
		);
		process.exit();
	} catch (e) {
		console.log(e);
	}
})();
