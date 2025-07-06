if global.player_end == "run over" or global.player_end == "drown"
{
	game_end();
}
else if global.player_end == "winner"
{
	game_restart();
}