local keyboard = libs.keyboard;
local streamkeys = libs.streamkeys;
include("../streamkeys.lua");

events.focus = function ()
	init("disi", true);
end

events.blur = function ()
	uninit();
end

--@help Launch Disi site
actions.launch = function ()
	os.open("http://www.disi.co.il/");
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
	keyboard.stroke("volume_mute");
end

--@help Next track
actions.next = function()
	streamkeys.action("disi", "playNext");
end

--@help previous track
actions.previous = function()
	streamkeys.action("disi", "playPrev");
end

--@help Toggle playback state
actions.play_pause = function()
	streamkeys.action("disi", "playPause");
end