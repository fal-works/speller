package speller;

/**
	A `String` that does not include any lower case character.
**/
@:forward
@:using(speller.extensions.StringExtension)
abstract UpperCaseString(String) {
	/**
		Convert `s` to `UpperCaseString`.
	**/
	public static inline function from(s: String): UpperCaseString {
		return new UpperCaseString(s.toUpperCase());
	}

	@:op(A + B) function add(other: UpperCaseString): UpperCaseString;

	/**
		Casts `this` to `String`.
	**/
	public inline function toString(): String
		return this;

	@:inheritDoc
	public inline function charAt(index: UInt): UpperCaseString {
		return new UpperCaseString(this.charAt(index));
	}

	@:inheritDoc
	public inline function split(delimiter: String): Array<UpperCaseString> {
		return cast this.split(delimiter);
	}

	@:inheritDoc
	public inline function substr(pos: Int, ?len: UInt): UpperCaseString {
		return new UpperCaseString(this.substr(pos, len));
	}

	@:inheritDoc
	public inline function substring(start: UInt, ?end: UInt): UpperCaseString {
		return new UpperCaseString(this.substring(start, end));
	}

	inline function new(s: String)
		this = s;
}
