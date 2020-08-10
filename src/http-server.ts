import http from "http";
import https from "https";
import fs from "fs";

import * as core from "express-serve-static-core";
import AppConfig from "./app-config";

export default class HttpServer {
	private static instance: HttpServer;

	static getInstance(app: core.Express): HttpServer {
		if (this.instance == null) {
			this.instance = new HttpServer(app);
		}
		return this.instance;
	}

	private server: http.Server;

	config: HttpConfig = AppConfig.getInstance().http;

	constructor(app: core.Express) {
		if (AppConfig.getInstance().debug) {
			this.server = http.createServer(app);
		} else {
			if (
				fs.existsSync(this.config.key) &&
				fs.existsSync(this.config.cert)
			) {
				const key = fs.readFileSync(this.config.key);
				const cert = fs.readFileSync(this.config.cert);
				this.server = https.createServer(
					{
						key,
						cert,
					},
					app
				);
			} else {
				this.server = http.createServer(app);
			}
		}
	}

	startUp() {
		return new Promise((reslove, _) => {
			this.server.listen(this.config.port, () => reslove(this));
		});
	}
}
