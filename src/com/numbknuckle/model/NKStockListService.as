package com.numbknuckle.model {
	import com.numbknuckle.events.ServiceEvent;	
	import flash.events.Event;	
	import flash.net.URLLoader;	
	import flash.net.URLRequest;	
	import org.robotlegs.mvcs.Actor;
	/**
	 * @author bconnatser
	 */
	public class NKStockListService extends Actor {
		//Assigning the variables as public static lets us use them globally
		private var message : String;
		public function NKStockListService() {
			message = "Team listing here";
		}
		public function requestTeamList() : void {
			var serviceEvent : ServiceEvent = new ServiceEvent(ServiceEvent.TEAMREADY);
			serviceEvent.teamList = message;	
			dispatch(serviceEvent);
		}
	}
}
