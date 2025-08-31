package backend;

import flixel.addons.input.FlxControls;
import flixel.input.keyboard.FlxKey;

enum Input {
    // Menu
    UI_LEFT;
    UI_RIGHT;
    UI_UP;
    UI_DOWN;

    // Gameplay
    TAP;

    // Main
    ACCEPT;
    BACK;
}

class Controls extends FlxControls<Input>
{
	function getDefaultMappings():ActionMap<Input>
	{
		return
        [
            // Menu
            UI_LEFT => [FlxKey.fromString(SaveGame.keys.data.ui_left)],
            UI_RIGHT => [FlxKey.fromString(SaveGame.keys.data.ui_right)],
            UI_UP => [FlxKey.fromString(SaveGame.keys.data.ui_up)],
            UI_DOWN => [FlxKey.fromString(SaveGame.keys.data.ui_down)],

            // Gameplay
            TAP => [FlxKey.fromString(SaveGame.keys.data.tap)],

            // Main
            ACCEPT => [FlxKey.fromString(SaveGame.keys.data.accept)],
            BACK => [FlxKey.fromString(SaveGame.keys.data.back)]
        ];
	}    
}