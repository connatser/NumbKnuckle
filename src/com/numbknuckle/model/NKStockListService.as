package com.numbknuckle.model {
	import com.numbknuckle.events.ServiceEvent;	

	import flash.events.Event;	
	import flash.net.URLLoader;	
	import flash.net.URLRequest;	

	import org.robotlegs.mvcs.Actor;

	/**
	 * @author bconnatser
	 */
	public class NKStockListService extends Actor {

		//Assigning the variables as public static lets us use them globally
		public static  var teamList : XML = new XML();

		public function NKStockListService() {
		}

		public function requestTeamList() : void {
			//EVENT CALL
			var NKmapURL : String = "assets/bracket.xml";
			var NKxmlurl : URLRequest;
			var NKmapLoader : URLLoader;

			teamList.ignoreWhite = true;
			NKxmlurl = new URLRequest(NKmapURL);
			NKmapLoader = new URLLoader(NKxmlurl); 
			NKmapLoader.addEventListener(Event.COMPLETE, fmapLoaded);

			//Once the XML is loaded this method gets called to assign the loaded data to the XML object that we created
			//Also sets the feedisLoaded variable to 1, can be called in with an EnterFrame event.
			function fmapLoaded() : void {
				teamList = XML(NKmapLoader.data);
				var serviceEvent : ServiceEvent = new ServiceEvent(ServiceEvent.TEAMREADY);
				serviceEvent.teamList = teamList;	
				dispatch(serviceEvent);
			}
		}
	}
}
