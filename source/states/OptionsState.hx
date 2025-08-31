package states;

import flixel.FlxG;
import flixel.FlxObject;

class OptionsState extends BaseState
{
	var camFollow:FlxObject = new FlxObject(80, 0, 0, 0);

    override function create() {
        super.create();
		camFollow.screenCenter(X);
		add(camFollow);
    }    

    override function update(elapsed:Float) {
        super.update(elapsed);
		if (FlxG.keys.justPressed.ESCAPE)
			FlxG.switchState(() -> new MenuState());
    }
}