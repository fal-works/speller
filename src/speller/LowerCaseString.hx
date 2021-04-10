package speller;

/**
	A `String` that does not include any upper case character.
**/
@:forward
@:using(speller.extensions.StringExtension)
abstract LowerCaseString(String) {
	/**
		Convert `s` to `LowerCaseString`.
	**/
	public static inline function from(s: String): LowerCaseString {
		return new LowerCaseString(s.toLowerCase());
	}

	@:op(A + B) function add(other: LowerCaseString): LowerCaseString;

	/**
		Casts `this` to `String`.
	**/
	public inline function toString(): String
		return this;

	@:inheritDoc
	public inline function charAt(index: UInt): LowerCaseString {
		return new LowerCaseString(this.charAt(index));
	}

	@:inheritDoc
	public inline function split(delimiter: String): Array<LowerCaseString> {
		return cast this.split(delimiter);
	}

	@:inheritDoc
	public inline function substr(pos: Int, ?len: UInt): LowerCaseString {
		return new LowerCaseString(this.substr(pos, len));
	}

	@:inheritDoc
	public inline function substring(start: UInt, ?end: UInt): LowerCaseString {
		return new LowerCaseString(this.substring(start, end));
	}

	inline function new(s: String)
		this = s;
}
