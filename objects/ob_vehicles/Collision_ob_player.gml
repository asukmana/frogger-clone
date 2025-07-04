instance_destroy();
global.player_live -= 1;

if global.player_live == 0
{
	instance_create_layer(x, y, "Instances", ob_text);
}