package com.numbknuckle.controller {
	import com.numbknuckle.view.NKStockListView;

	import org.robotlegs.mvcs.Command;

	/**
	 * @author bconnatser
	 */
	public class NKCreateStockListCommand extends Command {

		override public function execute() : void {
			var newStockText : NKStockListView = new NKStockListView();
			contextView.addChild(newStockText);
		}
	}
}
