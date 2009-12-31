package com.numbknuckle.controller {
	import com.numbknuckle.model.NKTeamListService;	
	import com.numbknuckle.view.NKTeamListView;

	import org.robotlegs.mvcs.Command;

	/**
	 * @author bconnatser
	 */
	public class NKCreateStockListCommand extends Command {

		[Inject]
		public var newTeamList : NKTeamListService;

		override public function execute() : void {
			var newStockText : NKTeamListView = new NKTeamListView();
			contextView.addChild(newStockText);

			newTeamList.requestTeamList();
		}
	}
}
