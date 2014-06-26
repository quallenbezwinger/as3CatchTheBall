package de.dirkkoehler.catchTheBall.events
{
import flash.events.Event;

/**
 * @author dkoehler
 */
public class GameEvent extends Event
{
	public static const MAIN_LOOP : String = "MAIN_LOOP";
	public static const START_GAME : String = "START GAME";
	public static const ADD_BALL : String = "ADD BALL";
	public function GameEvent (type : String, bubbles : Boolean = false, cancelable : Boolean = false)
	{
		super(type, bubbles, cancelable);
	}
}
}
