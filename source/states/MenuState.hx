package states;

import flixel.FlxG;
import flixel.FlxObject;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.math.FlxMath;
import flixel.text.FlxText;
import flixel.util.FlxColor;

class MenuState extends BaseState
{
	var camFollow:FlxObject;
	var gameSelected:Int = 0;
	var gameArray:Array<String> = ["Play", "Options", "Credits", "Exit"];
	var gameGroup:FlxTypedGroup<FlxText>;
    
    override function create() {
        super.create();

		camFollow = new FlxObject(80, 0, 0, 0);
		camFollow.screenCenter(X);
		add(camFollow);

		var hintText:FlxText = new FlxText(10, FlxG.height - 44, 0, 'Nagative the menu use: ${SaveGame.keys.data.ui_up} - ${SaveGame.keys.data.ui_down}', 32);
		hintText.setFormat("assets/fonts/motion-control.otf", 32, FlxColor.WHITE, LEFT, OUTLINE, FlxColor.BLACK);
		add(hintText);

		gameGroup = new FlxTypedGroup<FlxText>();
		add(gameGroup);

		for (i in 0...gameArray.length)
		{
			var text:FlxText = new FlxText(50, 30 + (60 * i), 0, gameArray[i], 64);
			text.ID = i;
			text.setFormat("assets/fonts/motion-control.otf", 64, FlxColor.WHITE, LEFT, OUTLINE, FlxColor.BLACK);
			gameGroup.add(text);
		}

		FlxG.camera.follow(camFollow, LOCKON, 0.05);

		changeSelection();
    }

	override function update(elapsed:Float)
	{
        super.update(elapsed);
		if (controls.justPressed.UI_UP || controls.justPressed.UI_DOWN)
			changeSelection(controls.justPressed.UI_UP ? -1 : 1);

		if (controls.justPressed.ACCEPT)
		{
			switch (gameArray[gameSelected])
			{
				case "Options":
					FlxG.switchState(() -> new OptionsState());
			}
		}
	}

	function changeSelection(change:Int = 0)
	{
		gameSelected = FlxMath.wrap(change + 1, 0, gameArray.length - 1);

		gameGroup.forEach(function(text)
		{
			if (text.ID == gameSelected)
			{
				text.color = FlxColor.YELLOW;
				camFollow.y = text.y;
			}
			else
			{
				text.color = FlxColor.WHITE;
			}
		});
	}
}