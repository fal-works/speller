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

	inline function new(s: String)
		this = s;
}
