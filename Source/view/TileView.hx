package view;

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
            hidden = new BitmapData(64, 64, true, 0xdddd00);
            bomb = new BitmapData(64, 64, true, 0xff0000);
            safe = new BitmapData(64, 64, true, 0x00ff00);
        }

        tile = new Bitmap(hidden);
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