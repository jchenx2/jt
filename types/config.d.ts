// config.d.ts
declare module "*config.json" {
	export interface Config {
		sql: SqlConfig;
		endpoint: EndpointConfig;
		http: HttpConfig;
	}
	export const sql: SqlConfig;
	export const endpoint: EndpointConfig;
	export const http: HttpConfig;
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
	port: number;
	key: string;
	cert: string;
}
