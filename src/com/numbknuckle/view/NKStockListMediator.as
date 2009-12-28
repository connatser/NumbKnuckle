package com.numbknuckle.view {
	import org.robotlegs.mvcs.Mediator;

	/**
	 * @author bconnatser
	 */
	public class NKStockListMediator extends Mediator {
		
		[Inject]
		public var view:NKStockListView;
		
		public function NKStockListMediator() {
			//do nothing
		}
		
		override public function onRegister():void{
		
		}
	}
}
