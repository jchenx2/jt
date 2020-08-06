import log4js from "log4js";

log4js.configure({
	appenders: {
		console: {
			type: "console",
		},
		app: {
			type: "dateFile",
			filename: "logs/app.log",
			pattern: ".yyyy-MM-dd",
			category: "default",
			maxLogSize: 10485760,
			numBackups: 10,
		},
	},
	categories: {
		default: {
			appenders: ["app", "console"],
			level: "all",
		},
	},
});

export default class Logger {
	private instance: log4js.Logger;

	constructor(tag: string) {
		this.instance = log4js.getLogger(tag);
	}

	useLogger() {
		return log4js.connectLogger(this.instance, {
			format:
				"[:remote-addr :method :url :status :response-timems][:referrer HTTP/:http-version :user-agent]",
		});
	}

	d(msg: any) {
		this.instance.debug(JSON.stringify(msg, null, 2));
	}

	w(msg: any) {
		this.instance.warn(msg);
	}

	i(msg: any) {
		this.instance.info(msg);
	}

	e(msg: any) {
		this.instance.error(msg);
	}
}
