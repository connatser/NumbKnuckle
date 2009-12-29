package com.numbknuckle {
	import com.numbknuckle.controller.NKCreateTeamListCommand;		import com.numbknuckle.events.ServiceEvent;	
	import org.robotlegs.adapters.SwiftSuspendersInjector;
	import com.numbknuckle.view.NKTeamListMediator;
	import com.numbknuckle.view.NKTeamListView;
	import com.numbknuckle.model.NKStockListService;
	import com.numbknuckle.controller.NKCreateTeamListServiceCommand;
	import org.robotlegs.base.ContextEvent;
	import org.robotlegs.mvcs.Context;
	import flash.display.DisplayObjectContainer;
	/**
	 * @author bconnatser
	 */
	public class NKMainContext extends Context {
		protected static const XML_CONFIG : XML = <types>
            <type name='org.robotlegs.mvcs::Actor'>
               <field name='eventDispatcher'/>
            </type>
            <type name='org.robotlegs.mvcs::Command'>
               <field name='contextView'/>
               <field name='mediatorMap'/>
               <field name='eventDispatcher'/>
               <field name='injector'/>
               <field name='mediatorMap'/>
            </type>
            <type name='org.robotlegs.mvcs::Mediator'>
               <field name='contextView'/>
               <field name='mediatorMap'/>
               <field name='eventDispatcher'/>
            </type>
	    </types>;
		public function NKMainContext(contextView : DisplayObjectContainer) {
			injector = new SwiftSuspendersInjector(XML_CONFIG);
			super(contextView);
		}
		override public function startup() : void {
			
			//Commands
			commandMap.mapEvent(ContextEvent.STARTUP_COMPLETE, NKCreateTeamListCommand, ContextEvent, true);
						
			//Mediators
			mediatorMap.mapView(NKTeamListView, NKTeamListMediator);
			
			//Dependency Injections
			injector.mapSingleton(NKStockListService);	
			commandMap.mapEvent(ServiceEvent.REQUEST_TEAMLIST, NKCreateTeamListServiceCommand);		
						
			//Start up
			super.startup();
		}
	}
}
