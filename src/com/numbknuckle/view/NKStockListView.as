package com.numbknuckle.view {
	import flash.text.TextField;
	import flash.display.MovieClip;

	/**
	 * @author bconnatser
	 */
	public class NKStockListView extends MovieClip {
		
		protected var generalText:TextField;
		
		public function NKStockListView() {
			build();
		}
		
		public function build():void{
			var generalText:TextField = new TextField();
			generalText.width = 200;
			generalText.height = 300;
			generalText.border = true;
			addChild(generalText);
		}
	}
}
