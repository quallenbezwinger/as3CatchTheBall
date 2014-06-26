package de.dirkkoehler.catchTheBall
{
import flash.display.Sprite;

/**
 * main class for the game
 * 
 * @version 16.10.2010
 * @author dkoehler
 */
public class Game extends Sprite
{
	
	private var gameContext:GameContext;
	
	public function Game ()
	{
		gameContext = new GameContext(this);
	}
}
}
