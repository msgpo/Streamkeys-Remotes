local keyboard = libs.keyboard;
local streamkeys = libs.streamkeys;
include("../streamkeys.lua");

events.focus = function ()
	init("napster", true);
end

events.blur = function ()
	uninit();
end

--@help Launch Napster site
actions.launch = function ()
	os.open("https://app.napster.com");
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
	streamkeys.action("napster", "playNext");
end

--@help previous track
actions.previous = function()
	streamkeys.action("napster", "playPrev");
end

--@help Like track
actions.like = function()
	streamkeys.action("napster", "like");
end

--@help Dislike track
actions.dislike = function()
	streamkeys.action("napster", "dislike");
end

local playing = false;
--@help Toggle playback state
actions.play_pause = function()
	if (playing) then
		streamkeys.action("napster", "pause");
	else
		streamkeys.action("napster", "play");
	end
  playing = not playing;
end

--@help Resume playback
actions.play = function()
	streamkeys.action("napster", "play");
end

--@help Pause playback
actions.pause = function()
	streamkeys.action("napster", "pause");
end