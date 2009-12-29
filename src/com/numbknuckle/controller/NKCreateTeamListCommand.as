package com.numbknuckle.controller {	import com.numbknuckle.view.NKTeamListView;		import org.robotlegs.mvcs.Command;
	/**	 * @author connatser	 */	public class NKCreateTeamListCommand extends Command {		override public function execute() : void {			var newStockText : NKTeamListView = new NKTeamListView();			contextView.addChild(newStockText);		}		
	}}