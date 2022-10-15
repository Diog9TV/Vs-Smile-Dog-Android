function onCreate()
	-- background shit
	makeAnimatedLuaSprite('curtains', 'bgs/bedroom/curtains', 650, -160);
	addAnimationByPrefix('curtains', 'curtains', 'curtains', 24, true);
	scaleObject('curtains', 0.5, 0.5);
	objectPlayAnimation('curtains', 'curtains', false)

	makeLuaSprite('screen', 'bgs/bedroom/smile in tv bg', 246, -66.9);
	setObjectOrder('screen', 1);
	scaleObject('screen', 0.36, 0.359);

	makeLuaSprite('tv', 'bgs/bedroom/smile tv', 246, -66.6);
	setObjectOrder('tv', 3);
	scaleObject('tv', 0.36, 0.359);

	makeLuaSprite('room', 'bgs/bedroom/smile room', 99, -270);
	scaleObject('room', 0.43, 0.44);

	addLuaSprite('room', false);
	addLuaSprite('curtains', false);
	addLuaSprite('screen', true);
	addLuaSprite('tv', true);
	
	close(false); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end