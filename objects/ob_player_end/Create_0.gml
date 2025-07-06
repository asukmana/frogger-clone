alarm[0] = 3 * game_get_speed(gamespeed_fps);
if global.player_end == "winner"
{
	alarm[1] = 1;
	audio_play_sound(so_firework, 0, true, 2);
}