//if object_get_name(object_index) == "ob_rock_right" or object_get_name(object_index) == "ob_rock_left"
//{
//	//show_debug_message("batu");
//}
//else
//{
//	instance_destroy();
//	global.player_live -= 1;

//	if global.player_live == 0
//	{
//		instance_create_layer(x, y, "Instances", ob_text);
//	}
//}

instance_destroy();
global.player_live -= 1;

if global.player_live == 0
{
	instance_create_layer(x, y, "Instances", ob_text);
}