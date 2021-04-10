package speller.extensions;

class StringExtension {
	/**
		Alternative to `toLowerCase()` but returns `LowerCaseString` instead of `String`.
	**/
	public static extern inline function toLower(s: String): LowerCaseString
		return LowerCaseString.from(s);

	/**
		Alternative to `toUpperCase()` but returns `UpperCaseString` instead of `String`.
	**/
	public static extern inline function toUpper(s: String): UpperCaseString
		return UpperCaseString.from(s);

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
		Alternative to `trim()` but returns `TrimmedString` instead of `String`.
	**/
	public static extern inline function toTrimmed(s: String): TrimmedString
		return TrimmedString.from(s);
}
