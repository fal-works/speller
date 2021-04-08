package speller;

using speller.extensions.StringExtension;

/**
	A `String` that is not empty (`""`).
**/
@:forward
@:using(speller.extensions.StringExtension)
abstract NonEmptyString(String) to String {
	/**
		Tries to convert `s` to `TrimmedString`.
	**/
	public static inline function from(s: String): Maybe<NonEmptyString>
		return maybe(if (s.isSome()) new NonEmptyString(s) else null);

	@:op(A + B) function add(other: NonEmptyString): NonEmptyString;

	@:op(A + B) function addString(other: String): NonEmptyString;

	/**
		Explicitly casts `this` to `String`.
	**/
	public inline function toString(): String
		return this;

	inline function new(s: String)
		this = s;
}
