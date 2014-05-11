package ui;

import haxe.Timer;
import flixel.text.FlxText;

/**
 * based on openfl FPS
 **/
class FPS extends FlxText {

    public var currentFPS (default, null):Float;

    private var cacheCount:Int;
    private var times:Array <Float>;


    public function new(x:Float = 100, y:Float = 100, color:Int = 0x000000) {

        super(x, y, 150, 'FPS:', 25);

        this.x = x;
        this.y = y;

        currentFPS = 0;

        cacheCount = 0;
        times = [];
    }

    override public function update():Void {

        var currentTime = Timer.stamp();
        times.push(currentTime);

        while (times[0] < currentTime - 1) {

            times.shift();

        }

        var currentCount = times.length;
        currentFPS = Math.round((currentCount + cacheCount) / 2);

        if (currentCount != cacheCount && visible) {

            this.text = "FPS: " + currentFPS;
        }
        cacheCount = currentCount;
    }
}
