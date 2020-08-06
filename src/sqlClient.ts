import mysql from "mysql";
import AppConfig from "./appConfig";

export default class SqlClient {
	private static instance: SqlClient;

	static getInstance(): SqlClient {
		if (this.instance == null) {
			this.instance = new SqlClient();
		}
		return this.instance;
	}

	private config: SqlConfig = AppConfig.getInstance().sqlConfig;

	private pool: mysql.Pool;

	constructor() {
		this.pool = mysql.createPool({
			host: this.config.host,
			user: this.config.user,
			password: this.config.password,
			database: this.config.database,
			insecureAuth: true,
		});
	}

	query(sql: string): Promise<any> {
		return new Promise((resolve, reject) => {
			this.pool.getConnection((e, conn) => {
				if (e) {
					reject(e);
				} else {
					conn.query(sql, (err, result) => {
						if (err) {
							reject(err);
						} else {
							resolve(result);
						}
						conn.release();
					});
				}
			});
		});
	}
}
