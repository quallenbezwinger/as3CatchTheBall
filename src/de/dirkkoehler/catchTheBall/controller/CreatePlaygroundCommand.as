package de.dirkkoehler.catchTheBall.controller
{
import de.dirkkoehler.catchTheBall.view.BallView;
import de.dirkkoehler.catchTheBall.view.BarView;

import org.robotlegs.mvcs.Command;

/**
 * @author dkoehler
 */
public class CreatePlaygroundCommand extends Command
{
	
	override public function execute ():void
	{
		
		var bar : BarView = new BarView();
		contextView.addChild(bar);
		var ball:BallView = new BallView();
		contextView.addChild(ball);
	}
}
}
