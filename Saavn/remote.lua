local keyboard = libs.keyboard;
local streamkeys = libs.streamkeys;
include("../streamkeys.lua");

events.focus = function ()
	init("saavn", true);
end

events.blur = function ()
	uninit();
end

--@help Launch Saavn site
actions.launch = function ()
	os.open("http://www.saavn.com");
end

--@help Lower volume
actions.volume_down = function()
	keyboard.stroke("volume_down");
end

--@help Raise volume
actions.volume_up = function()
	keyboard.stroke("volume_up");
end

--@help Mute volume
actions.volume_mute = function()
	streamkeys.action("saavn", "mute");
end

--@help Next track
actions.next = function()
	streamkeys.action("saavn", "playNext");
end

--@help previous track
actions.previous = function()
	streamkeys.action("saavn", "playPrev");
end

local playing = false;
--@help Toggle playback state
actions.play_pause = function()
	if (playing) then
		streamkeys.action("saavn", "pause");
	else
		streamkeys.action("saavn", "play");
	end
  playing = not playing;
end

--@help Resume playback
actions.play = function()
	streamkeys.action("saavn", "play");
end

--@help Pause playback
actions.pause = function()
	streamkeys.action("saavn", "pause");
end