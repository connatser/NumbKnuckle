package {
	import com.numbknuckle.tests.NKValidatorTest;

	import flash.display.MovieClip;

	/**
	 * @author connatser
	 */
	public class NumbKnuckleMain extends MovieClip {

		public var nkValidationTest : NKValidatorTest;

		public function NumbKnuckleMain() {
			nkValidationTest = new NKValidatorTest();
			addChild(nkValidationTest);
			nkValidationTest.validateForm();
		}
	}
}
