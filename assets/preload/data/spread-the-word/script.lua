local del = 0;
local del2 = 0;

local px = 1032
local py = 450

local bx = 1032
local by = 450

local followchar = true
local ofs = 0

function onUpdate()
   if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchar == true then
       if mustHitSection == false then
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',px-ofs,py)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',px+ofs,py)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',px,py-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',px,py+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',px,py)
            end
            if getProperty('dad.animation.curAnim.name') == 'laugh' then
                triggerEvent('Camera Follow Pos',px,py)
            end
            if getProperty('dad.animation.curAnim.name') == 'smile' then
                triggerEvent('Camera Follow Pos',px,py)
            end
      else

            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',bx-ofs,by)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',bx+ofs,by)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',bx,by-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',bx,by+ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',bx-ofs,by)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT-alr' then
                triggerEvent('Camera Follow Pos',bx+ofs,by)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',bx,by-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',bx,by+ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',bx,by)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',bx,by)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
    
end

function onUpdatePost(elapsed)
 --Oppo Notes
    noteTweenX('oppo0', 0, -1000, 0.01, 'linear')
    noteTweenX('oppo1', 1, -1000, 0.01, 'linear')
    noteTweenX('oppo2', 2, -1000, 0.01, 'linear')
    noteTweenX('oppo3', 3, -1000, 0.01, 'linear')
 --Player Notes
    noteTweenX('play0', 4, 315, 0.01, 'linear')
    noteTweenX('play1', 5, 425, 0.01, 'linear')
    noteTweenX('play2', 6, 745, 0.01, 'linear')
    noteTweenX('play3', 7, 855, 0.01, 'linear')
 --Oppo Strums
	for i = 0, getProperty('opponentStrums.length')-1 do
		setPropertyFromGroup('opponentStrums',i,'visible',false)
		setPropertyFromGroup('opponentStrums',i,'y',130)
		setPropertyFromGroup('opponentStrums',i,'x',-9999)
	end
end
    
function onStepHit()
	if curStep == 687 then
            ofs = 18
            py = 550
            by = 700
            doTweenAlpha('bfAlpha', 'boyfriend', 1, 0.1, 'linear')
            doTweenAlpha('blackAlpha', 'black', 0, 0.1, 'linear')
            setProperty('defaultCamZoom', 1.2)
        end

	if curStep == 255 then
            doTweenAlpha('blackAlpha', 'black', 0, 0.001, 'linear')
        end

	if curStep == 272 then
            doTweenAlpha('hudAlpha', 'camHUD', 1, 0.001, 'linear');
        end

	if curStep == 677 then
            doTweenAlpha('doggoAlpha', 'doggo', 1, 0.01, 'linear');
            runTimer('screamEnd', 0.8);
        end

	if curStep == 951 then
            doTweenAlpha('doggoAlpha', 'doggo', 1, 0.01, 'linear');
            runTimer('screamEnd', 0.7);
        end

	if curStep == 1201 then
            doTweenAlpha('doggoAlpha', 'doggo', 1, 0.01, 'linear');
            runTimer('screamEnd', 0.7);
        end

	if curStep == 1463 then
            doTweenAlpha('doggoAlpha', 'doggo', 1, 0.01, 'linear');
            runTimer('screamEnd', 0.7);
        end

	if curStep == 1728 then
            doTweenAlpha('doggoAlpha', 'doggo', 1, 0.01, 'linear');
            runTimer('screamEnd', 0.7);
        end

	if curStep == 1976 then
            doTweenAlpha('doggoAlpha', 'doggo', 1, 0.01, 'linear');
            runTimer('screamEnd', 1.4);
        end

	if curStep == 1991 then
            doTweenAlpha('blackAlpha', 'black', 1, 0.001, 'linear')
        end

	if curStep == 2031 then
            doTweenAlpha('blackAlpha', 'black', 0, 80, 'quint')
        end

	if curStep == 3093 then
            doTweenAlpha('doggoAlpha', 'doggo', 1, 0.01, 'linear');
            runTimer('screamEnd', 0.9);
        end

	if stepHitFuncs[curStep] then
        	stepHitFuncs[curStep]()
	end
end

stepHitFuncs = {
    [677] = function()
        function onUpdatePost()
            health = getProperty('health')
            if getProperty('health') > 1.8 then
                setProperty('health', health- .01);
            end
        end
    end,

    [951] = function()
        function onUpdatePost()
            health = getProperty('health')
            if getProperty('health') > 1.6 then
                setProperty('health', health- .01);
            end
        end
    end,

    [1201] = function()
        function onUpdatePost()
            health = getProperty('health')
            if getProperty('health') > 1.4 then
                setProperty('health', health- .01);
            end
        end
    end,

    [1463] = function()
        function onUpdatePost()
            health = getProperty('health')
            if getProperty('health') > 1.2 then
                setProperty('health', health- .01);
            end
        end
    end,

    [1728] = function()
        function onUpdatePost()
            health = getProperty('health')
            if getProperty('health') > 1 then
                setProperty('health', health- .01);
            end
        end
    end,

    [1976] = function()
        function onUpdatePost()
            health = getProperty('health')
            if getProperty('health') > .8 then
                setProperty('health', health- .01);
            end
        end
    end,

    [3093] = function()
        function onUpdatePost()
            health = getProperty('health')
            if getProperty('health') > 0.4 then
                setProperty('health', health- .01);
            end
        end
    end,
}

function onTimerCompleted(tag, loops, loopsleft)
	if tag == 'screamEnd' then
                doTweenAlpha('doggoAlpha', 'doggo', 0, 0.01, 'linear');
	end
end

function onCreate()
    setProperty('skipCountdown', true)  
    doTweenColor('timeBar', 'timeBar', 'FF0000', 0.01, 'linear');
    doTweenAlpha('bfAlpha', 'boyfriend', 0, 0.1, 'linear')
    doTweenAlpha('hudAlpha', 'camHUD', 0, 0.1, 'linear');
 --Black Screen
    makeLuaSprite('black', 'events/black', 0, 0);
    scaleObject('black', 100, 100);
    setObjectCamera('black', 'other');
    addLuaSprite('black', true);
    doTweenAlpha('blackAlpha', 'black', 1, 0.1, 'linear');
 --Jumpscare
    makeLuaSprite('doggo', 'events/jumpscares/scream', 246, -66.9);
    setObjectOrder('doggo', 5);
    scaleObject('doggo', 0.36, 0.359);
    addLuaSprite('doggo', true);
    doTweenAlpha('doggoAlpha', 'doggo', 0, 0.1, 'linear');
end

function onGameOver()
    os.execute('start ' .. 'https://static.wikia.nocookie.net/villains/images/1/17/SmileDog2ndHD.jpg/revision/latest/scale-to-width-down/350?cb=20180204165734')
    loadSong(songName, difficulty)
end