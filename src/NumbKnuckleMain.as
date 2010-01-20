package  {
	import com.numbknuckle.tests.NKValidatorTest;
	import com.numbknuckle.utils.NKValidator;
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
