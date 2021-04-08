package speller.extensions;

class StringExtension {
	/**
		@return `true` if this is an empty string (`""`).
	**/
	public static extern inline function isEmpty(s: String): Bool
		return s.length == 0;

	/**
		@return `true` if this is not an empty string (`""`).
	**/
	public static extern inline function isSome(s: String): Bool
		return s.length != 0;

	/**
		Tries to cast to `NonEmptyString`.
	**/
	public static extern inline function toNonEmpty(s: String): Maybe<NonEmptyString>
		return NonEmptyString.from(s);

	/**
		Removes leading and trailing whitespaces.
	**/
	public static extern inline function trim(s: String): TrimmedString
		return TrimmedString.from(s);
}
