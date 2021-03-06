local keyboard = libs.keyboard;
local streamkeys = libs.streamkeys;
include("../streamkeys.lua");

events.detect = function ()
	return detect();
end

events.focus = function ()
	init("7digital", true);
end

events.blur = function ()
	uninit();
end

--@help Launch 7digital site
actions.launch = function ()
	os.open("http://www.7digital.com");
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
	streamkeys.action("7digital", "mute");
end

--@help Next track
actions.next = function()
	streamkeys.action("7digital", "playNext");
end

--@help previous track
actions.previous = function()
	streamkeys.action("7digital", "playPrev");
end

--@help Toggle playback state
actions.play_pause = function()
	streamkeys.action("7digital", "playPause");
end