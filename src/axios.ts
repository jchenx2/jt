import axios from "axios";
import AppConfig from "./appConfig";
import Logger from "./logger";

export default class Axios {
	private static instance: Axios;

	static getInstance(): Axios {
		if (this.instance == null) {
			this.instance = new Axios();
		}
		return this.instance;
	}

	private config: EndpointConfig = AppConfig.getInstance().epConfig;

	constructor() {
		axios.defaults.baseURL = this.config.baseURL;
		axios.defaults.timeout = 5000;
		axios.interceptors.response.use(
			(response) => {
				if (response.status !== 200) {
					return Promise.reject(
						new Error(
							`status:${response.status},statusText:${response.statusText}`
						)
					);
				} else {
					if (response.data.code === 0) {
						return response;
					} else {
						return Promise.reject(
							new Error(JSON.stringify(response.data, null, 2))
						);
					}
				}
			},
			(error) => {
				return Promise.reject(error);
			}
		);
	}

	getBooks() {
		return axios.get("books", {
			params: {
				channel: this.config.channel,
			},
		});
	}

	getBookInfo(bookid: number) {
		return axios.get("Bookinfo", {
			params: {
				channel: this.config.channel,
				bookid,
			},
		});
	}

	getChapters(bookid: number) {
		return axios.get("chapters", {
			params: {
				channel: this.config.channel,
				bookid,
			},
			timeout: 10000,
		});
	}

	getChapterInfo(bookid: number, chapterid: number) {
		return axios.get("ChapterInfo", {
			params: {
				channel: this.config.channel,
				bookid,
				chapterid,
			},
		});
	}
}