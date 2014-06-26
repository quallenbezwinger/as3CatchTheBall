package de.dirkkoehler.catchTheBall.command
{
import de.dirkkoehler.catchTheBall.view.BallView;
import de.dirkkoehler.catchTheBall.Game;

import org.robotlegs.mvcs.Command;

/**
 * @author dkoehler
 */
public class StartGameCommand extends Command
{
	[Inject]
	public var vsiew:Game;
	
	override public function execute():void {
		trace("start game");
		var ball:BallView = new BallView();
		vsiew.addChild(ball);
	}
}
}
