package com.numbknuckle.controller{
	import com.numbknuckle.view.TeamList;
	
	import org.robotlegs.mvcs.Command;

	public class TeamListCommand extends Command{
		override public function execute() : void {			
			var teamList:TeamList = new TeamList();
			contextView.addChild(teamList);
		}
		
	}
}