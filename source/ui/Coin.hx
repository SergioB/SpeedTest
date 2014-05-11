package ui;

import flixel.FlxSprite;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;


class Coin extends FlxSprite {
    static inline var animationRate = 20;
    static inline var rotate = "ROTATE";
    var initalX:Float;
    var initalY:Float;
    static inline var deltaX = 400;
    static inline var deltaY = 300;
    public function new(x, y) {
        super(x, y + deltaY);
        this.loadGraphicFromTexture(Reg.textureData, true);
        this.animation.addByPrefix(rotate, "coins_left", Coin.animationRate, true);
        this.animation.play(rotate);
        this.setGraphicSize(58, 0);
        initalX = x;
        initalY = y;
        tweenDown();
    }
    private function tweenDown(tween:FlxTween = null) {
        FlxTween.tween(this, {x:initalX + deltaX, y: initalY + deltaY}, 1, { ease: FlxEase.backOut, complete:tweenUp} );
    }

    private function tweenUp(tween:FlxTween = null) {
        FlxTween.tween(this, {x:initalX, y: initalY}, 0.9, { ease: FlxEase.expoOut, complete:tweenDown} );
    }
}
