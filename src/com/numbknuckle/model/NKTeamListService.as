package com.numbknuckle.model {
	import com.numbknuckle.events.ServiceEvent;	

	import org.robotlegs.mvcs.Actor;

	/**
	 * @author bconnatser
	 */
	public class NKTeamListService extends Actor {

		//Assigning the variables as public static lets us use them globally
		public var message : String;

		public function NKTeamListService() {
			message = "Team listing here";
		}

		public function requestTeamList() : void {
			var serviceEvent : ServiceEvent = new ServiceEvent(ServiceEvent.TEAM_READY);
			serviceEvent.teamList = message;	
			dispatch(serviceEvent);
		}
	}
}
