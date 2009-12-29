package com.numbknuckle.controller {
	import com.numbknuckle.model.NKStockListService;	
	import com.numbknuckle.view.NKStockListView;

	import org.robotlegs.mvcs.Command;

	/**
	 * @author bconnatser
	 */
	public class NKCreateStockListCommand extends Command {

		[Inject]
		public var newTeamList : NKStockListService;

		override public function execute() : void {
			var newStockText : NKStockListView = new NKStockListView();
			contextView.addChild(newStockText);
			
			newTeamList.requestTeamList();
		}
	}
}
