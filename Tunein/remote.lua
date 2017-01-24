local keyboard = libs.keyboard;
local streamkeys = libs.streamkeys;
include("../streamkeys.lua");

events.focus = function ()
	init("tunein", true);
end

events.blur = function ()
	uninit();
end

--@help Launch TuneIn site
actions.launch = function ()
	os.open("http://www.tunein.com");
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

--@help Toggle playback state
actions.play_pause = function()
	streamkeys.action("tunein", "playPause");
end