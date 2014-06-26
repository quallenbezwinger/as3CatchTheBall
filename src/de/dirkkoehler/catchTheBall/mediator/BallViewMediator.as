package de.dirkkoehler.catchTheBall.mediator
{
import de.dirkkoehler.catchTheBall.events.GameEvent;
import de.dirkkoehler.catchTheBall.view.BarView;
import flash.display.MovieClip;
import com.greensock.TweenMax;
import de.dirkkoehler.catchTheBall.view.BallView;

import org.robotlegs.mvcs.Mediator;

import flash.events.Event;

/**
 * @author dkoehler
 */
public class BallViewMediator extends Mediator
{
	[Inject]
	public var ballView : BallView;

	override public function onRegister ():void
	{
		trace("registered");
		TweenMax.to(ballView, 5, {x:200, y:700});
		eventMap.mapListener(eventDispatcher, GameEvent.MAIN_LOOP, checkCollision);
	}

	private function checkCollision (e:Event) : void
	{
		trace("check collision");
//		if (ballView.hitTestObject(barView)) {
//			
//		}
	}
}
}
