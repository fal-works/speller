package speller;

import speller.extensions.StringExtension;

/**
	A `String` that is not empty (`""`).
**/
@:forward
@:using(speller.extensions.StringExtension)
abstract NonEmptyString(String) to String {
	/**
		Tries to convert `s` to `NonEmptyString`.
	**/
	public static inline function from(s: String): Maybe<NonEmptyString>
		return maybe(if (StringExtension.isSome(s)) new NonEmptyString(s) else null);

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
