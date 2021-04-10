package speller;

class LowerCaseStringTest extends buddy.BuddySuite {
	public function new() {
		describe("LowerCaseString.from()", {
			inline function shouldEqual(input: String, output: Null<Dynamic>) {
				@:nullSafety(Off)
				it('"${input}" -> ${output}', () -> {
					@:nullSafety(Off)
					Assert.same(output, LowerCaseString.from(input));
				});
			}

			shouldEqual("AAA", "aaa");
			shouldEqual("Aaa", "aaa");
			shouldEqual("aaa", "aaa");
			shouldEqual("_", "_");
			shouldEqual("", "");
			shouldEqual(" ", " ");
		});
	}
}
