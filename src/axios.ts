import axios, { AxiosInstance } from "axios";

import AppConfig from "./app-config";

export default class Axios {
	private static instance: Axios;

	static getInstance(): Axios {
		if (this.instance == null) {
			this.instance = new Axios();
		}
		return this.instance;
	}

	static axios: AxiosInstance = axios;

	private config: EndpointConfig = AppConfig.getInstance().endpoint;

	constructor() {
		axios.defaults.baseURL = this.config.baseURL;
		axios.defaults.timeout = 30000;
		axios.interceptors.response.use(
			(response) => {
				if (response.status !== 200) {
					return Promise.reject(
						new Error(
							`status:${response.status},statusText:${response.statusText}`
						)
					);
				} else {
					if (response.data.code !== undefined) {
						if (response.data.code === 0) {
							return response;
						} else {
							return Promise.reject(
								new Error(
									JSON.stringify(response.data, null, 2)
								)
							);
						}
					} else {
						return response;
					}
				}
			},
			(error) => {
				return Promise.reject(error);
			}
		);
	}

	async getBooks(): Promise<any[]> {
		try {
			const response = await axios.get("books", {
				params: {
					channel: this.config.channel,
				},
			});
			const books = response.data.result;
			return books;
		} catch (e) {
			return [];
		}
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
