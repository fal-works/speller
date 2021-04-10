package speller;

/**
	A `String` that has no leading or trailing whitespaces.
**/
@:forward
@:using(speller.extensions.StringExtension)
abstract TrimmedString(String) to String {
	/**
		Converts `s` to `TrimmedString`.
	**/
	@:from
	public static inline function from(s: String): TrimmedString {
		return new TrimmedString(StringTools.trim(s));
	}

	@:op(A + B) function add(other: TrimmedString): TrimmedString;

	@:op(A + B) function addString(other: String): String;

	@:access(speller.NonEmptyString)
	@:op(A + B) inline function addNonEmptyString(other: NonEmptyString): NonEmptyString {
		return new NonEmptyString(this + other);
	}

	/**
		Explicitly casts `this` to `String`.
	**/
	public inline function toString(): String
		return this;

	inline function new(s: String)
		this = s;
}
