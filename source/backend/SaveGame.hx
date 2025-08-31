package backend;

import flixel.addons.input.FlxControlInputType;
import flixel.input.keyboard.FlxKey;
import flixel.util.FlxSave;

class SaveGame {
    public static var keys:FlxSave;
    public static var pref:FlxSave;

    public static function initData():Void {
        initKeys();
        initPref();
    }
    
    static function initKeys():Void
    {
    	keys = new FlxSave();
    	keys.bind("game_keys", "Not Taiko Data");
    
    	keys.data.ui_left = "LEFT";
    	keys.data.ui_right = "RIGHT";
    	keys.data.ui_up = "UP";
    	keys.data.ui_down = "DOWN";
        keys.data.tap = "SPACE";
    	keys.data.accept = "ENTER";
    	keys.data.back = "ESCAPE";
    
    	keys.flush();

        trace("Finished Init Keys Data!");
    }

    static function initPref():Void
    {
        pref = new FlxSave();
        pref.bind("game_pref", "Not Taiko Data");

        pref.data.speed_modify = 1;
        
        pref.flush();

        trace("Finished Init Pref Data!");
    }
}