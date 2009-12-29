package com.numbknuckle {
	import com.numbknuckle.events.ServiceEvent;			import org.robotlegs.adapters.SwiftSuspendersInjector;

	import com.numbknuckle.view.NKStockListMediator;
	import com.numbknuckle.view.NKStockListView;
	import com.numbknuckle.model.NKStockListService;
	import com.numbknuckle.controller.NKCreateStockListCommand;

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
			commandMap.mapEvent(ContextEvent.STARTUP_COMPLETE, NKCreateStockListCommand, ContextEvent, true);
			
			//Mediators
			mediatorMap.mapView(NKStockListView, NKStockListMediator);
			
			//Dependency Injections
			injector.mapSingleton(NKStockListService);	
			commandMap.mapEvent(ServiceEvent.REQUEST_TEAMLIST, NKCreateStockListCommand);		
						
			//Start up
			super.startup();
		}
	}
}
