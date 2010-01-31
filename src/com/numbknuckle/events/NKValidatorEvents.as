package com.numbknuckle.events {
	import flash.events.Event;

	/**
	 * @author connatser
	 */
	public class NKValidatorEvents extends Event {
		public static const VALIDATIONREADY : String = "VALIDATIONREADY";
		public static const VALIDATIONPASSED : String = "VALIDATIONPASSED";
		public static const VALIDATIONFAILED : String = "VALIDATIONFAILED";

		public var validateMessage : String;
		public var validateFailedArray : Array;

		public function NKValidatorEvents(type : String, bubbles : Boolean = false, cancelable : Boolean = false) {
			super(type, bubbles, cancelable);
		}
	}
}
