package speller;

class NonEmptyTrimmedStringTest extends buddy.BuddySuite {
	public function new() {
		describe("NonEmptyTrimmedString.from()", {
			inline function shouldEqual(input: String, output: Null<Dynamic>) {
				@:nullSafety(Off)
				it('"${input}" -> ${output}', () -> {
					@:nullSafety(Off)
					Assert.same(output, NonEmptyTrimmedString.from(input));
				});
			}

			shouldEqual("a", "a");
			shouldEqual("  a  ", "a");
			shouldEqual(" ", Maybe.none());
			shouldEqual("", Maybe.none());
		});
	}
}
