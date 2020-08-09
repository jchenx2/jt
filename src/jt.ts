export default interface Jt {
	insert(): Promise<void>;

	getId(): Promise<number>;
}
