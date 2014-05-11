package;

import flixel.util.loaders.TexturePackerData;

class Reg {
    public static var textureData:TexturePackerData;
    public static function init() {
        textureData = new TexturePackerData("assets/images/doge_1600.json", "assets/images/doge_1600.png");
    }
}