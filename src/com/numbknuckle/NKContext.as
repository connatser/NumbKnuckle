package com.numbknuckle{
	import com.numbknuckle.controller.RequestTeamCommand;
	import com.numbknuckle.controller.TeamListCommand;
	import com.numbknuckle.events.NumbEvents;
	import com.numbknuckle.model.TeamModel;
	import com.numbknuckle.view.TeamList;
	import com.numbknuckle.view.TeamListMediator;
	
	import flash.display.DisplayObjectContainer;
	
	import org.robotlegs.base.ContextEvent;
	import org.robotlegs.mvcs.Context;

	public class NKContext extends Context
	{
		public function NKContext(contextView:DisplayObjectContainer=null, autoStartup:Boolean=true){
			super(contextView, autoStartup);
		}
		
		override public function startup():void{
			commandMap.mapEvent(ContextEvent.STARTUP_COMPLETE, TeamListCommand, ContextEvent, true);
			mediatorMap.mapView(TeamList, TeamListMediator);
			
			injector.mapSingleton(TeamModel);
			commandMap.mapEvent(NumbEvents.REQUEST_TEAM, RequestTeamCommand);
			
			super.startup();
		}
		
	}
}