package com.numbknuckle.view {
	import com.numbknuckle.events.ServiceEvent;	
	import org.robotlegs.mvcs.Mediator;

	/**
	 * @author bconnatser
	 */
	public class NKStockListMediator extends Mediator {

		[Inject]
		public var view : NKStockListView;

		public function NKStockListMediator() {
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
