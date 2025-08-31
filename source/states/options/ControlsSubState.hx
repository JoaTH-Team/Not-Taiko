package states.options;

import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.text.FlxText;

class ControlsSubState extends BaseSubState
{
    var controlsList:Array<String> = ["UI LEFT", "UI DOWN", "UI UP", "UI RIGHT", "ACCEPT", "BACK", "TAP"];
    var controlsGroup:FlxTypedGroup<FlxText>;

    override function create() {
        super.create();
    }    

    override function update(elapsed:Float) {
        super.update(elapsed);
    }
}