function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Mist' then --Check if the note on the chart is a Bullet Note
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'mist'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashHue', 255);
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashSat', -20);
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashBrt', 1);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has penalties
                        setProperty('health', 0.001)
end
end
end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'Mist' then
		setProperty('health', getProperty('health')-0.02);
		setProperty('boyfriend.specialAnim', false);
		setProperty('dad.specialAnim', true);
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if loopsLeft >= 1 then
	end
end