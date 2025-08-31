package backend.states;

import flixel.FlxG;
import flixel.FlxState;
import openfl.system.System;

class BaseState extends FlxState
{
    var controls:Controls;

    override function create() {
        super.create();

        controls = new Controls();
        FlxG.inputs.addInput(controls);

        System.gc();
    }    
}