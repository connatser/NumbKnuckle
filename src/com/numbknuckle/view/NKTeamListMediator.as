package com.numbknuckle.view {
	import com.numbknuckle.events.ServiceEvent;	

	import org.robotlegs.mvcs.Mediator;

	/**
	 * @author bconnatser
	 */
	public class NKTeamListMediator extends Mediator {

		[Inject]
		public var view : NKTeamListView;

		public function NKTeamListMediator() {
			//do nothing
		}

		override public function onRegister() : void {
			eventMap.mapListener(eventDispatcher, ServiceEvent.TEAM_READY, onTeamReady);
			dispatch(new ServiceEvent(ServiceEvent.REQUEST_TEAMLIST));
		}

		private function onTeamReady(event : ServiceEvent) : void {
			view.updateList(event.teamList);
		}
	}
}
