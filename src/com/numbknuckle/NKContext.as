package com.numbknuckle
{
	import flash.display.DisplayObjectContainer;
	
	import org.robotlegs.mvcs.Context;
	
	public class NKContext extends Context
	{
		public function NKContext(contextView:DisplayObjectContainer=null, autoStartup:Boolean=true)
		{
			super(contextView, autoStartup);
		}
	}
}