package com.numbknuckle.events {	import flash.events.Event;
	/**	 * @author connatser	 */	public class ServiceEvent extends Event {		public static const TEAM_READY : String = "TEAMREADY";
		public var teamList : String;		public static const REQUEST_TEAMLIST : String = "REQUEST_TEAMLIST";				public function ServiceEvent(type : String) {			super(type);		}
	}}