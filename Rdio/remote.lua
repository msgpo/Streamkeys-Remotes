local keyboard = libs.keyboard;
local streamkeys = libs.streamkeys;
include("../streamkeys.lua");

events.focus = function ()
	init("rdio", true);
end

events.blur = function ()
	uninit();
end

--@help Launch Rdio site
actions.launch = function ()
	os.open("http://www.rdio.com");
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
	streamkeys.action("rdio", "mute");
end

--@help Next track
actions.next = function()
	streamkeys.action("rdio", "playNext");
end

--@help previous track
actions.previous = function()
	streamkeys.action("rdio", "playPrev");
end

--@help Toggle playback state
actions.play_pause = function()
	streamkeys.action("rdio", "playPause");
end