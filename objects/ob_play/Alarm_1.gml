///@description Countdown

global.player_time -= 1;
if global.player_time > 0
{
	alarm[1] = game_get_speed(gamespeed_fps);
}
