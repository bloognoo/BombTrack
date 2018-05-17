package;

import openfl.display.Sprite;
import openfl.display.Bitmap;
import openfl.display.BitmapData;

class TileView extends Sprite {

    private static var hidden:BitmapData=null;
    private static var bomb:BitmapData=null;
    private static var safe:BitmapData=null;

    private var tile:Bitmap;

    public function new () {
        super();

        if(hidden == null){
            trace("Initialised");
            hidden = new BitmapData(64, 64, false, 0xffff00);
            bomb = new BitmapData(64, 64, false, 0xff0000);
            safe = new BitmapData(64, 64, false, 0x00ff00);
            tile = new Bitmap(hidden);
        }
        trace("Starting Up");

        tile = new Bitmap(hidden);
        addChild(tile);
    }

    public function Reset(){
       tile.bitmapData = hidden;
    }

    public function Bombed(){
        tile.bitmapData = bomb;
    }

    public function Safe(){
        tile.bitmapData = safe;
    }
}
