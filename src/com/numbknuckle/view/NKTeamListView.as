package com.numbknuckle.view {
	import flash.text.TextField;
	import flash.display.MovieClip;

	/**
	 * @author bconnatser
	 */
	public class NKTeamListView extends MovieClip {
		
		protected var generalText:TextField;
		
		public function NKTeamListView() {
			build();
		}
		
		public function build():void{
			var generalText:TextField = new TextField();
			generalText.width = 200;
			generalText.height = 300;
			generalText.border = true;
			addChild(generalText);
		}
		
		public function updateList(value:String) : void {
			generalText.text = value;
		}
	}
}
