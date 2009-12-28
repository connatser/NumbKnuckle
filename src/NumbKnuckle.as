package {
	import flash.display.MovieClip;

	import com.numbknuckle.NKMainContext;

	/**
	 *
	 * @author bconnatser
	 */
	public class NumbKnuckle extends MovieClip {

		protected var context : NKMainContext; 
		private var __stageWidth:Number = stage.stageWidth;
		private var __stageHeight:Number = stage.stageHeight;

		public function NumbKnuckle() {
			context = new NKMainContext(this);
		}
		
		public function get _stageHeight() : Number {
			return __stageHeight;
		}
		
		public function set _stageHeight(_stageHeight : Number) : void {
			__stageHeight = _stageHeight;
		}
		
		public function get _stageWidth() : Number {
			return __stageWidth;
		}
		
		public function set _stageWidth(_stageWidth : Number) : void {
			__stageWidth = _stageWidth;
		}
	}
}
