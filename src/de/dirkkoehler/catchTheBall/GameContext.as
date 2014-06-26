package de.dirkkoehler.catchTheBall
{
import de.dirkkoehler.catchTheBall.command.GameLoop;
import de.dirkkoehler.catchTheBall.controller.CreatePlaygroundCommand;
import de.dirkkoehler.catchTheBall.mediator.BallViewMediator;
import de.dirkkoehler.catchTheBall.mediator.BarViewMediator;
import de.dirkkoehler.catchTheBall.model.AccMeter;
import de.dirkkoehler.catchTheBall.view.BallView;
import de.dirkkoehler.catchTheBall.view.BarView;

import org.robotlegs.base.ContextEvent;
import org.robotlegs.mvcs.Context;

import flash.display.DisplayObjectContainer;
import flash.events.Event;

/**
 * @author dkoehler
 */
public class GameContext extends Context
{
	public function GameContext (contextView : DisplayObjectContainer = null, autoStartup : Boolean = true)
	{
		super(contextView, autoStartup);
	}

	override public function startup ():void
	{
		injector.mapSingleton(AccMeter);
		commandMap.mapEvent(ContextEvent.STARTUP_COMPLETE, CreatePlaygroundCommand, ContextEvent, true);
		commandMap.mapEvent(Event.ENTER_FRAME, GameLoop);	
		mediatorMap.mapView(BallView, BallViewMediator);
		mediatorMap.mapView(BarView, BarViewMediator);
		
	
		
		super.startup();
	}


}
}
