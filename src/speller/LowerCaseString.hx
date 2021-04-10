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

	inline function new(s: String)
		this = s;
}
