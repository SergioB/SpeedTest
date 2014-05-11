package ui;

import flixel.group.FlxGroup;
import flixel.util.FlxTimer;
import flixel.text.FlxText;


class CoinManager extends FlxGroup {
    static inline var initialX = 10;
    static inline var maximumX = 400;
    var initialY = 10;
    var x = initialX;
    var howManyCoins:Int = 0;
    var howManyCoinsText:FlxText;
    public function new() {
        super();
        howManyCoinsText = new FlxText(400, 200, 150, "", 25);
        add(howManyCoinsText);
    }

    public function addCoins(howMany:Int = 3) {
        for (i in 0 ... howMany) {
            new FlxTimer(i * 0.2, addOneCoin, 1);
        }
        howManyCoins += howMany;
        howManyCoinsText.text = 'Coins: $howManyCoins';
    }
    private function addOneCoin(timer:FlxTimer = null) {
        add(new Coin(x, initialY));
        x++;
        if (x > maximumX) x = initialX;
    }
}
