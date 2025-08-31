package objects.settings;

import flixel.FlxSprite;
import flixel.util.FlxColor;

class CheckToggle extends FlxSprite
{
    public var spriteTracker:FlxSprite;
    public var toggle:Bool = false;

    public function new() {
        super();

		setGraphicSize(64, 64);
		scrollFactor.set();
		updateHitbox();
    }

    override function update(elapsed:Float)
	{
		super.update(elapsed);

        if (toggle) this.color = FlxColor.GREEN;
        else if (!toggle) this.color = FlxColor.RED;

		if (spriteTracker != null)
		{
			setPosition(spriteTracker.x + spriteTracker.width + 5, spriteTracker.y + -15);
			scrollFactor.set(spriteTracker.scrollFactor.x, spriteTracker.scrollFactor.y);
		}
	}
}