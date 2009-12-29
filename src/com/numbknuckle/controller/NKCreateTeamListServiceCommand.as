package com.numbknuckle.controller {
	import com.numbknuckle.model.NKStockListService;	

	import org.robotlegs.mvcs.Command;

	/**
	 * @author bconnatser
	 */
	public class NKCreateTeamListServiceCommand extends Command {

		[Inject]
		public var newTeamList : NKStockListService;

		override public function execute() : void {
			newTeamList.requestTeamList();
		}
	}
}
