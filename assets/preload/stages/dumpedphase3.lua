function onCreate()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'bf');
	makeAnimatedLuaSprite("STATIC2","STATIC2", 100,-750);
	addAnimationByPrefix('STATIC2', 'STATIC2', 'STATIC2', 3, true);
	
	setProperty("STATIC2.antialiasing",true);
	
	setProperty("STATIC2.scrollFactor.x",1);
	setProperty("STATIC2.scrollFactor.y",1);
	setProperty("STATIC2.scale.x",2);
	setProperty("STATIC2.scale.y",2);
	
	addLuaSprite("STATIC2");
	
	setProperty("iconP1.antialiasing",false);
	setProperty("iconP2.antialiasing",false);
end
function onUpdate()

end
