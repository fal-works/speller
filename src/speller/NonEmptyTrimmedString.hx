package speller;

import speller.extensions.StringExtension;

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
		final trimmed = TrimmedString.from(s);
		return if (StringExtension.isEmpty(trimmed)) Maybe.none() else
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

	@:inheritDoc
	public inline function toLowerCase(): NonEmptyTrimmedString {
		return new NonEmptyTrimmedString(this.toLowerCase());
	}

	@:inheritDoc
	public inline function toUpperCase(): NonEmptyTrimmedString {
		return new NonEmptyTrimmedString(this.toUpperCase());
	}

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
