package com.numbknuckle.tests {
	import com.numbknuckle.events.NKValidatorEvents;
	import com.numbknuckle.utils.NKValidator;

	import flash.display.MovieClip; 

	/**
	 * @author connatser
	 */
	public class NKValidatorTest extends MovieClip {

		public var formValidateArray : Array;
		public var nkValidate : NKValidator;

		public function validateForm() : void {
			//////////////////////////////////////////////////////////////////////////				
			//Add to the validation array. Only add required fields.
			formValidateArray = new Array(); 
			//Form field test one -- this field will fail, notice value == invalidIf
			formValidateArray.push({field:"testOne", friendlyName:"This is for test one", type:"String", value:"", invalidIf:"", statement:"A description must be entered for test one."});
			//Form field test two -- this field wil pass, notice value != invalidIf
			formValidateArray.push({field:"testTwo", friendlyName:"This is for test two", type:"String", value:"Test", invalidIf:"", statement:"A description must be entered for test two."});
			//////////////////////////////////////////////////////////////////////////	
			//----//	
			//////////////////////////////////////////////////////////////////////////				
			nkValidate = new NKValidator();
			addChild(nkValidate);
			nkValidate.addEventListener(NKValidatorEvents.VALIDATIONPASSED, validationPassed);
			nkValidate.addEventListener(NKValidatorEvents.VALIDATIONFAILED, validationFailed);
			//call the main method to run validation.
			performValidation();
				//////////////////////////////////////////////////////////////////////////
		}

		public function performValidation() : void {
			nkValidate.NKValidationInit(formValidateArray);
		}

		public function validationPassed(event : NKValidatorEvents) : void {
			//Call all the required methods.
			trace(event.validateMessage);
		}

		public function validationFailed(event : NKValidatorEvents) : void {
			//Perform FAILED actions; such as throw alerts, call additional methods, whatever you want...
			trace(event.validateMessage);
			trace(event.validateFailedArray.toString());
		}
	}
}
