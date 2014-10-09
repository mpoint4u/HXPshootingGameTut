package;

import com.haxepunk.Entity;
import com.haxepunk.graphics.atlas.AtlasRegion;
import com.haxepunk.HXP;
import com.haxepunk.utils.Input;
import com.haxepunk.utils.Key;

/**
 * ...
 * @author pm
 */
class PlayerShip extends Entity
{
	private var movespeed:Int;

	public function new(g:Dynamic) 
	{
		super();
		graphic = g;
		movespeed = 8;
		width = 64;
		height = 48;
		x = HXP.width/2 - width/2;
		y = HXP.height - 80;
	}
	
	override public function update() {
		if (Input.check("down")) {
			moveBy(0, movespeed);
		}
		if (Input.check("up")) {
			moveBy(0, -movespeed);
		}
		if (Input.check("right")) {
			moveBy(movespeed, 0);
		}
		if (Input.check("left")) {
			moveBy(-movespeed, 0);
		}
		
		if (this.x < 0) this.x = 0;
		if (this.y < 0) this.y = 0;
		if (this.x > HXP.width - width) this.x = HXP.width - width;
		if (this.y > HXP.height - height) this.y = HXP.height - height;
	}
	
}