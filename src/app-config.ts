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

	endpoint: EndpointConfig;

	sql: SqlConfig;

	http: HttpConfig;

	schedule: ScheduleConfig;

	debug: boolean;

	constructor(env?: string) {
		if (env === "production") {
			this.endpoint = prod.endpoint;
			this.sql = prod.sql;
			this.http = prod.http;
			this.schedule = prod.schedule;
			this.debug = false;
		} else {
			this.endpoint = dev.endpoint;
			this.sql = dev.sql;
			this.http = dev.http;
			this.schedule = dev.schedule;
			this.debug = true;
		}
	}
}
