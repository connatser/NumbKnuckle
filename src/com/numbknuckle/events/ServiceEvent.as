package com.numbknuckle.events {	import flash.events.Event;

	/**	 * @author connatser	 */	public class ServiceEvent extends Event {		public static const TEAMREADY : String;
		public static const REQUEST_TEAMLIST : String;
		public var teamList;
		
		public function ServiceEvent(type : String) {			super(type);		}
	}}