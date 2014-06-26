package de.dirkkoehler.catchTheBall.view
{
import flash.display.Sprite;

/**
 * @author dkoehler
 */
public class BarView extends Sprite
{
	public function BarView ()
	{
		this.graphics.beginFill(0x00FFFF);
		this.graphics.drawRect(0, 0, 100, 10);
		this.graphics.endFill();
	}
}
}
