if global.player_end == "run over" or global.player_end == "drown"
{
	alarm[0] = 3 * game_get_speed(gamespeed_fps);
}
else if global.player_end == "winner"
{
	alarm[0] = 5 * game_get_speed(gamespeed_fps);
	audio_play_sound(so_firework, 0, true, 2);
}