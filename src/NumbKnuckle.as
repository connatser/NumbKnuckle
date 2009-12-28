package {
	import flash.display.MovieClip;

	import com.numbknuckle.NKMainContext;

	/**
	 *
	 * @author bconnatser
	 */
	public class NumbKnuckle extends MovieClip {

		protected var context : NKMainContext; 

		public function NumbKnuckle() {
			context = new NKMainContext(this);
		}
	}
}
