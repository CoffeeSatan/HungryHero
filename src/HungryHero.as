package
{
	import flash.display.Sprite;
	
	import net.hires.debug.Stats;
	
	import screens.InGame;
	import screens.Welcome;
	
	import starling.core.Starling;
	import starling.display.Image;
	
	[SWF(frameRate = "60",width="800", height="600", backgroundColor = "0x333333")]
	public class HungryHero extends Sprite
	{
		
		private var stats:Stats;
		private var myStarling:Starling;
		
		public function HungryHero()
		{
			stats = new Stats()
			this.addChild(stats);
			
			myStarling = new Starling(Game, stage);
			myStarling.antiAliasing = 1;
			myStarling.start();
		}
	}
}