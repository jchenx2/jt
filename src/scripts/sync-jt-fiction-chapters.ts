import Axios from "../axios";
import Logger from "../logger";
import JtFictionChapter from "../jt-fiction-chapter";

const logger = new Logger("jt-fiction-chapters");

async function getBooks(): Promise<any[]> {
	try {
		const response = await Axios.getInstance().getBooks();
		const books = response.data.result;
		return books;
	} catch (e) {
		return [];
	}
}

async function getChapters() {
	logger.d(`get chapters - start`);
	const books = await getBooks();
	for (const b of books) {
		const { bookid, bookname } = b;
		try {
			logger.d(`get chapters, bookid=${bookid}, bookname=${bookname}`);
			const response = await Axios.getInstance().getChapters(bookid);
			const volumelist: any[] = response.data.result;
			for (const v of volumelist) {
				const { chapterlist } = v;
				for (const c of chapterlist) {
					const { book_id, chapterid, chaptername } = c;
					try {
						const exists = await JtFictionChapter.exists(
							book_id,
							chaptername
						);
						logger.d(
							`get chapter info, exits=${exists}, bookid=${book_id}, chapterid=${chapterid}, chaptername=${chaptername}`
						);
						if (!exists) {
							const r = await Axios.getInstance().getChapterInfo(
								book_id,
								chapterid
							);
							const chapter = new JtFictionChapter({
								book_id,
								chaptername,
								content: r.data.result.content,
							});
							await chapter.insert();
						}
					} catch (e) {
						logger.e(
							`get chapter info fail, bookid=${book_id}, chapterid=${chapterid}, chaptername=${chaptername}, message=${e.message}`
						);
					}
				}
			}
		} catch (e) {
			logger.e(
				`get chapters fail, bookid=${bookid}, chaptername=${bookname}, message=${e.message}`
			);
		}
	}
	logger.d(`get chapters - finish, books=${JSON.stringify(books, null, 2)}`);
}

(async () => {
	try {
		await getChapters();
		process.exit();
	} catch (e) {
		logger.e(e.message);
	}
})();
