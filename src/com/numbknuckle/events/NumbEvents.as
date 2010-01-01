package com.numbknuckle.events
{
	import flash.events.Event;

	public class NumbEvents extends Event{
		
		public static const TEAM_READY:String = "TEAMREADY";
		public static const REQUEST_TEAM:String = "REQUESTTEAM";
		public var message:String;
		
		public function NumbEvents(type:String, bubbles:Boolean=false, cancelable:Boolean=false){
			super(type, bubbles, cancelable);
		}
		
	}
}