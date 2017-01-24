local keyboard = libs.keyboard;
local streamkeys = libs.streamkeys;
include("../streamkeys.lua");

events.focus = function ()
	init("earbits", true);
end

events.blur = function ()
	uninit();
end

--@help Launch Earbits site
actions.launch = function ()
	os.open("http://www.earbits.com");
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
	streamkeys.action("earbits", "mute");
end

--@help Next track
actions.next = function()
	streamkeys.action("earbits", "playNext");
end

--@help previous track
actions.previous = function()
	streamkeys.action("earbits", "playPrev");
end

--@help Toggle playback state
actions.play_pause = function()
	streamkeys.action("earbits", "playPause");
end