package com.numbknuckle.model{
	import com.numbknuckle.events.NumbEvents;
	
	import org.robotlegs.mvcs.Actor;

	public class TeamModel extends Actor{
		
		private var message : String;

		public function TeamModel() {
			message = "This text came from a RobotLegs instantiation";
		}

		public function requestTeam() : void {
			var teamEvent : NumbEvents = new NumbEvents(NumbEvents.TEAM_READY);
			teamEvent.message = message;	
			dispatch(teamEvent);
		}
		
	}
}