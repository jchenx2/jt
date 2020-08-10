// config.d.ts
declare module "*config.json" {
	export interface Config {
		sql: SqlConfig;
		endpoint: EndpointConfig;
		http: HttpConfig;
		schedule: ScheduleConfig;
	}
	export const sql: SqlConfig;
	export const endpoint: EndpointConfig;
	export const http: HttpConfig;
	export const schedule: ScheduleConfig;
}

interface SqlConfig {
	host: string;
	user: string;
	password: string;
	database: string;
}

interface EndpointConfig {
	baseURL: string;
	channel: string;
}

interface HttpConfig {
	host: string;
	port: number;
	key: string;
	cert: string;
}

interface ScheduleConfig {
	hour: number;
	minute: number;
}
