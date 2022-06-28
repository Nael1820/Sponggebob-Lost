function onCreate()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'bf');
	makeAnimatedLuaSprite("dumped2","dumped2", 100,-500);
	addAnimationByPrefix('dumped2', 'dumped2', 'dumped2', 2, true);
	makeAnimatedLuaSprite("dumped","dumped",100,-570);
	addAnimationByPrefix('dumped', 'dumped', 'dumped', 24, true);
	
	setProperty("dumped.antialiasing",true);
	setProperty("dumped2.antialiasing",true);
	
	setProperty("dumped2.scrollFactor.x",1);
	setProperty("dumped2.scrollFactor.y",1);
	
	setProperty("dumped.scrollFactor.x",0.80);
	setProperty("dumped.scrollFactor.y",0.80);
	setProperty("dumped.scale.x",1.60);
	setProperty("dumped.scale.y",1.60);
	
	setProperty("dumped2.scale.x",2);
	setProperty("dumped2.scale.y",2);
	
	addLuaSprite("dumped2");
	addLuaSprite("dumped");
	
	setProperty("iconP1.antialiasing",false);
	setProperty("iconP2.antialiasing",false);
end
function onUpdate()

end
