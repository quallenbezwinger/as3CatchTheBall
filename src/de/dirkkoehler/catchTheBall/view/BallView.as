package de.dirkkoehler.catchTheBall.view
{
import flash.display.Sprite;

/**
 * @author dkoehler
 */
public class BallView extends Sprite
{
	public function BallView ()
	{
		this.graphics.beginFill(0x00FF00);
		this.graphics.drawCircle(0, 0, 10);
		this.graphics.endFill();
	}
}
}
