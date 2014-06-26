package de.dirkkoehler.catchTheBall.mediator
{
import de.dirkkoehler.catchTheBall.model.AccMeter;
import de.dirkkoehler.catchTheBall.view.BarView;

import com.greensock.TweenMax;

import org.robotlegs.mvcs.Mediator;

import flash.events.AccelerometerEvent;

/**
 * @author dkoehler
 */
public class BarViewMediator extends Mediator
{
	[Inject]
	public var view:BarView;
	
	[Inject]
	private var accMeter:AccMeter;
	
	private var stageW:Number;
	private var stageH:Number;
	private var acc:Number = 0;
	private static const TOLERNACE:Number = 0.1;
	
	public function BarViewMediator ()
	{
	}
	
	override public function onRegister ():void
	{
		trace(accMeter.test());
		stageW = view.stage.stageWidth;
		stageH = view.stage.stageHeight;
		view.x = stageW/2-view.width /2;
		view.y = stageH-view.height-10;
		addContextListener(AccelerometerEvent.UPDATE, updatePosition);
	}

	private function updatePosition (e:AccelerometerEvent) : void
	{
//		trace(accMeter.xValue);
		trace(e.accelerationX + " x");
		var posX : Number;
		if (e.accelerationX <= acc + TOLERNACE || e.accelerationX >= acc + TOLERNACE)
		{
			posX = stageW/2 - (stageW/2 * (e.accelerationX))-view.width /2;
			TweenMax.to(view, 1, {x:posX});
		}
		acc = e.accelerationX;
	}
}
}
