package;

import ui.CoinManager;
import ui.FPS;
import ui.Coin;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxMath;
import flixel.ui.FlxButton;


/**
 * A FlxState which can be used for the game's menu.
 */
class MenuState extends FlxState
{
    var coinManager:CoinManager;
	/**
	 * Function that is called up when to state is created to set it up. 
	 */
	override public function create():Void
	{
		super.create();
        trace('In create');
        Reg.init();
        coinManager = new CoinManager();
        add(coinManager);
        addCoins();
        add(new FPS());
        var button = new FlxButton(100, 200, "Add Coins", addCoins);
        add(button);
	}

    var coinsToAdd:Int = 3;
    function addCoins() {
        coinManager.addCoins(coinsToAdd);
        coinsToAdd += 3;
    }
	
	/**
	 * Function that is called when this state is destroyed - you might want to 
	 * consider setting all objects this state uses to null to help garbage collection.
	 */
	override public function destroy():Void
	{
		super.destroy();
	}

	/**
	 * Function that is called once every frame.
	 */
	override public function update():Void
	{
		super.update();
	}	
}