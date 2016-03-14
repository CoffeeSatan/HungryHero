package objects
{
	import starling.core.Starling;
	import flash.display.MovieClip;
	import starling.display.Sprite;
	import starling.events.Event;
	import starling.textures.Texture;
	
	public class Hero extends Sprite
	{
		private var heroArt:MovieClip;
		public function Hero()
		{
			super();
			this.addEventListener(starling.events.Event.ADDED_TO_STAGE, onAddedToStage);
		}
		
		private function onAddedToStage(event:Event):void
		{
			this.removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
			createHeroArts();
		}
		
		private function createHeroArts():void
		{
				heroArt = new MovieClip(Assets.getAtlas().getTextures("fly_"), 20);
				heroArt.x = Math.ceil(-heroArt.width/2);
				heroArt.y = Math.ceil(-heroArt.height/2);
				starling.core.Starling.juggler.add(heroArt);
				this.addChild(heroArt);			
		}
	}
}