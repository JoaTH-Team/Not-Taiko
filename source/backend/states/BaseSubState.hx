package backend.states;

import flixel.FlxG;
import flixel.FlxSubState;
import openfl.system.System;

class BaseSubState extends FlxSubState
{
    var controls:Controls;

    override function create() {
        super.create();

        controls = new Controls();
        FlxG.inputs.addInput(controls);

        System.gc();
    }    
}