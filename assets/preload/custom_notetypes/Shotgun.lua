function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Shotgun' then --Check if the note on the chart is a Bullet Note
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'Shotgun'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashHue', 255);
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashSat', -20);
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashBrt', 1);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has penalties
end
end
end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'Shotgun' then
		playSound('shotgun', 2);
		characterPlayAnim('boyfriend', 'dodge', true);
		setProperty('boyfriend.specialAnim', true);
		setProperty('dad.specialAnim', true);
end
end

function noteMiss(id, direction, noteType, isSustainNote)
	if noteType == 'Shotgun' then
		characterPlayAnim('dad', 'Blink', true);
		characterPlayAnim('boyfriend', 'hurt', true);
		setProperty('health', getProperty('health')-0.500);
		playSound('shotgun2', 2);
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if loopsLeft >= 1 then
		setProperty('health', getProperty('health')-3);
	end
end