import com.haxepunk.graphics.atlas.TextureAtlas;
import com.haxepunk.graphics.Image;
import com.haxepunk.HXP;
import com.haxepunk.Scene;
import com.haxepunk.utils.Input;
import com.haxepunk.utils.Key;

class MainScene extends Scene
{
	private var player:PlayerShip;
	
	public function new()
	{
		super();
		
		Input.define("up",    [Key.UP, Key.W]);
		Input.define("down",  [Key.DOWN, Key.S]);
		Input.define("left",  [Key.LEFT, Key.A]);
		Input.define("right", [Key.RIGHT, Key.D]);
		
		var atlas:TextureAtlas = TextureAtlas.loadTexturePacker("atlas/atlas.xml");
		
		player = new PlayerShip(atlas);
		add(player);
	}
	  
 }