package com.numbknuckle.view{
	import com.numbknuckle.events.NumbEvents;
	
	import org.robotlegs.mvcs.Mediator;

	public class TeamListMediator extends Mediator{
		[Inject]
		public var teamList:TeamList;
		
		public function TeamListMediator(){
		
		}
		
		override public function onRegister() : void {
			eventMap.mapListener(eventDispatcher, NumbEvents.TEAM_READY, onTeamReady);
			dispatch(new NumbEvents(NumbEvents.REQUEST_TEAM));
		}
		
		public function onTeamReady(event:NumbEvents):void{
			teamList.teamList.text = event.message;
		}
		
	}
}