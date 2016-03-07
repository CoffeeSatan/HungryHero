package screens
{
	import objects.Hero;
	
	import starling.display.Sprite;
	
	public class InGame extends Sprite
	{
		private var hero:Hero;
		public function InGame()
		{
			super();
			this.addEventListener(starling.events.Event.ADDED_TO_STAGE, onAddedToStage);
		}
		
		private function onAddedToStage():void
		{
			// TODO Auto Generated method stub
			
		}
	}
}