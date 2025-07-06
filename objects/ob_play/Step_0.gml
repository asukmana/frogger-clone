if global.player_time == 0
{
		global.player_end = "time";
		global.player_live = 0;
		instance_create_layer(x, y, "Instances", ob_player_end);
}