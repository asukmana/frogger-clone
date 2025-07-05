blink_count = 0;

//this is already in ob_vehicle collision event
//global.player_lives -= 1;

//audio_play_sound(so_explosion, 0, false);

alarm[0] = 5;

if global.player_live == 0
{
//	ob_play.alarm[2] = game_get_speed(gamespeed_fps);
	instance_destroy();
}