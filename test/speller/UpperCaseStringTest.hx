package speller;

class UpperCaseStringTest extends buddy.BuddySuite {
	public function new() {
		describe("UpperCaseString.from()", {
			inline function shouldEqual(input: String, output: Null<Dynamic>) {
				@:nullSafety(Off)
				it('"${input}" -> ${output}', () -> {
					@:nullSafety(Off)
					Assert.same(output, UpperCaseString.from(input));
				});
			}

			shouldEqual("AAA", "AAA");
			shouldEqual("Aaa", "AAA");
			shouldEqual("aaa", "AAA");
			shouldEqual("_", "_");
			shouldEqual("", "");
			shouldEqual(" ", " ");
		});
	}
}
