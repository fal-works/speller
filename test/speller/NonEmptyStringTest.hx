package speller;

class NonEmptyStringTest extends buddy.BuddySuite {
	public function new() {
		describe("NonEmptyString.from()", {
			inline function shouldEqual(input: String, output: Null<Dynamic>) {
				@:nullSafety(Off)
				it('"${input}" -> ${output}', () -> {
					@:nullSafety(Off)
					Assert.same(output, NonEmptyString.from(input));
				});
			}

			shouldEqual("a", maybe("a"));
			shouldEqual(" ", maybe(" "));
			shouldEqual("", Maybe.none());
		});
	}
}
