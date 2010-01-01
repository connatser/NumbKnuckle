package com.numbknuckle.controller{
	import com.numbknuckle.model.TeamModel;
	
	import org.robotlegs.mvcs.Command;

	public class RequestTeamCommand extends Command{
		
		[Inject]
		public var teamModel : TeamModel;

		override public function execute() : void {
			teamModel.requestTeam();
		}
		
	}
}