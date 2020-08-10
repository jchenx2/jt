export default class DateFormat {
	private date: Date;

	constructor(date: Date) {
		this.date = date;
	}

	format(): string {
		return `${this.date.getFullYear()}-${
			this.date.getMonth() + 1
		}-${this.date.getDate()} ${this.date.getHours()}:${this.date.getMinutes()}:${this.date.getSeconds()}`;
	}
}
