package com.numbknuckle.events {	import flash.events.Event;

	/**	 * @author connatser	 */	public class ServiceEvent extends Event {		public static const TEAMREADY : String = "TEAMREADY";
		public static const REQUEST_TEAMLIST : String = "REQUEST_TEAMLIST";
		public var teamList:String;
		
		public function ServiceEvent(type : String, bubbles : Boolean = false, cancelable : Boolean = false) {			super(type, bubbles, cancelable);		}
	}}