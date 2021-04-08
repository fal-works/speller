package speller;

class TrimmedStringTest extends buddy.BuddySuite {
	public function new() {
		describe("TrimmedString.from()", {
			inline function shouldEqual(input: String, output: Null<Dynamic>) {
				@:nullSafety(Off)
				it('"${input}" -> ${output}', () -> {
					@:nullSafety(Off)
					Assert.same(output, TrimmedString.from(input));
				});
			}

			shouldEqual("a", "a");
			shouldEqual("  a  ", "a");
			shouldEqual(" ", "");
			shouldEqual("", "");
		});
	}
}
