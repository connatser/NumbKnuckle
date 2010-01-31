package com.numbknuckle.utils {
	import com.numbknuckle.events.NKValidatorEvents;

	import flash.display.Sprite;

	/**
	 * @author connatser 
	 */
	public class NKValidator extends Sprite {

		private var _validationArray : Array = new Array;
		private var _formIsValid : Boolean = false;
		private var _kgValidateArray : Array;
		private var _kgValidateAlertString : String;
		private var _kgValidateFailedArray : Array;

		public function NKValidator() {
			//Constructor, Do Nothing
		}

		public function NKValidationInit(value : Array) : void {
			validationArray = value;
			beginValidation();
		}

		private function beginValidation() : void {
			//Create a new validation array to hold string values of invalid or valid. 
			//Will be used later to determine what alert to throw
			_kgValidateArray = new Array;
			_kgValidateFailedArray = new Array;
				
			for each (var i in validationArray) {
				if (i.value == i.invalidIf) {
					kgValidateArray.push("invalid");
				} else {
					kgValidateArray.push("valid");	
				}
			}
				
			//Send Validation method the results				
			validationResults();
		}

		private function validationResults() : void {

			//Reset Validate String back to null
			kgValidateAlertString = "";
				
			//Scans the array looking for "invalid". If so, log the position to match with the field.		
			for (var i : int = 0;i < kgValidateArray.length;i++) {
				if (kgValidateArray[i] == "invalid") {
					kgValidateAlertString += validationArray[i].friendlyName + ": " + validationArray[i].statement + "\n\n";
					kgValidateFailedArray.push(validationArray[i].field);
					kgValidateFailedArray.push(validationArray[i].friendlyName);
					kgValidateFailedArray.push(validationArray[i].statement);
				}
			}
				
			//Determine whether validation passed
			if (kgValidateAlertString == "") {
				validationPassed();
			} else {
				validationFailed();
			}
		}

		
		/////////////////////////////////////////////////////////////////////////////////////////////////////
		//Final Pass or Fail functions
		private function validationPassed() : void {
			var validatePassedEvent : NKValidatorEvents = new NKValidatorEvents(NKValidatorEvents.VALIDATIONPASSED);
			validatePassedEvent.validateMessage = "Passed";
			dispatchEvent(validatePassedEvent);
		}

		private function validationFailed() : void {
			var validateFailedEvent : NKValidatorEvents = new NKValidatorEvents(NKValidatorEvents.VALIDATIONFAILED);
			validateFailedEvent.validateMessage = "Failed";
			validateFailedEvent.validateFailedArray = kgValidateFailedArray;
			dispatchEvent(validateFailedEvent);
		}

		/////////////////////////////////////////////////////////////////////////////////////////////////////
			
			
		/////////////////////////////////////////////////////////////////////////////////////////////////////
		//All Getters and Setters
			
		//////////////////////////////////////////////////////////////////////////
		//Set the validation array value, will loop through this to generate the Validation Notice
		public function get validationArray() : Array {
			return _validationArray;
		}

		public function set validationArray(value : Array) : void {
			_validationArray = value;
		}

		//////////////////////////////////////////////////////////////////////////
			
		//////////////////////////////////////////////////////////////////////////
		//Set the validation array value, will loop through this to generate the Validation Notice
		public function get kgValidateArray() : Array {
			return _kgValidateArray;
		}

		public function set kgValidateArray(value : Array) : void {
			_kgValidateArray = value;
		}

		//////////////////////////////////////////////////////////////////////////
			
		//////////////////////////////////////////////////////////////////////////
		//Final setting to broadcast whether or not the form is valid.
		public function get formIsValid() : Boolean {
			return _formIsValid;
		}

		public function set formIsValid(value : Boolean) : void {
			_formIsValid = value;
		}

		//////////////////////////////////////////////////////////////////////////
			
		//////////////////////////////////////////////////////////////////////////
		//Final setting to broadcast whether or not the form is valid.
		public function get kgValidateAlertString() : String {
			return _kgValidateAlertString;
		}

		public function set kgValidateAlertString(value : String) : void {
			_kgValidateAlertString = value;
		}

		//////////////////////////////////////////////////////////////////////////
			
		//////////////////////////////////////////////////////////////////////////
		//Final setting to broadcast whether or not the form is valid.
		public function get kgValidateFailedArray() : Array {
			return _kgValidateFailedArray;
		}

		public function set kgValidateFailedArray(value : Array) : void {
			_kgValidateFailedArray = value;
		}
			//////////////////////////////////////////////////////////////////////////
			
			/////////////////////////////////////////////////////////////////////////////////////////////////////
	}
}
