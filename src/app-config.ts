import dev from "../config/dev.config.json";
import prod from "../config/prod.config.json";

export default class AppConfig {
	private static instance: AppConfig;

	static getInstance(): AppConfig {
		if (this.instance == null) {
			this.instance = new AppConfig(process.env.NODE_ENV);
		}
		return this.instance;
	}

	epConfig: EndpointConfig;

	sqlConfig: SqlConfig;

	httpConfig: HttpConfig;

	debug: boolean;

	constructor(env?: string) {
		if (env === "production") {
			this.epConfig = prod.endpoint;
			this.sqlConfig = prod.sql;
			this.httpConfig = prod.http;
			this.debug = false;
		} else {
			this.epConfig = dev.endpoint;
			this.sqlConfig = dev.sql;
			this.httpConfig = dev.http;
			this.debug = true;
		}
	}
}
