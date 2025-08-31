package states;

import flixel.FlxG;
import flixel.text.FlxText;
import flixel.util.FlxColor;

class MenuState extends BaseState
{
    override function create() {
        super.create();

        var text:FlxText = new FlxText(10, FlxG.height - 44, 0, 'Nagative the menu use: ${SaveGame.keys.data.ui_up} - ${SaveGame.keys.data.ui_down}', 32);
        text.setFormat("assets/fonts/motion-control.otf", 32, FlxColor.WHITE, LEFT, OUTLINE, FlxColor.BLACK);
        add(text);
    }

    override function update(elapsed:Float) {
        super.update(elapsed);
    }
}