package com.kingpharm.events
{
	import flash.events.Event;
	
	public class KGEvents extends Event
	{
		public function KGEvents(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
	}
}