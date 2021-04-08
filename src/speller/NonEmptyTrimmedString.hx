package speller;

using speller.extensions.StringExtension;

/**
	A `String` that is not empty (`""`) and has no leading or trailing whitespaces.
**/
@:forward
abstract NonEmptyTrimmedString(NonEmptyString) to NonEmptyString to String {
	/**
		Tries to convert `s` to `NonEmptyTrimmedString`.
	**/
	@:access(speller.NonEmptyString)
	public static inline function from(s: String): Maybe<NonEmptyTrimmedString> {
		final trimmed = s.trim();
		return if (trimmed.isEmpty()) Maybe.none() else
			Maybe.from(new NonEmptyTrimmedString(new NonEmptyString(trimmed)));
	}

	@:op(A + B) function add(other: NonEmptyTrimmedString): NonEmptyTrimmedString;

	@:op(A + B) function addString(other: String): NonEmptyString;

	@:access(speller.NonEmptyString)
	@:op(A + B) inline function addNonEmptyString(other: NonEmptyString): NonEmptyString {
		return new NonEmptyString(this + other);
	}

	@:access(speller.NonEmptyString)
	@:op(A + B) function addTrimmedString(other: TrimmedString): NonEmptyTrimmedString;

	/**
		Explicitly casts `this` to `String`.
	**/
	public inline function toString(): String
		return this;

	/**
		Casts `this` to `TrimmedString`.
	**/
	@:access(speller.TrimmedString)
	@:to
	public inline function toTrimmedString(): TrimmedString
		return new TrimmedString(this);

	inline function new(s: NonEmptyString)
		this = s;
}
