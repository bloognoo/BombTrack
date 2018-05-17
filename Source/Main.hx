package;


import openfl.display.Sprite;


class Main extends Sprite {

	private var list:List<TileView>;

	public function new () {

		super ();

		list = new List<TileView>();

		var dim = 8;

		for(i in 0...(dim*dim))
		{
			var tv = new TileView();
			tv.x = (i%dim) * 72;
			tv.y = Std.int(i/dim) * 72;
			trace(tv.y);
			list.add(tv);
			addChild(tv);
		}
	}


}
