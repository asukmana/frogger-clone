#region Movement
if keyboard_check_pressed(ord("W"))
{
	y -= 128;
	image_angle = 0;
	image_speed = 1;
	sprite_index = sp_walk;
}
else if keyboard_check_released(ord("W"))
{
    motion_set(90, 0);
	image_speed = 0;
	sprite_index = sp_idle;
}

if keyboard_check_pressed(ord("A"))
{
	x -= 128;//motion_set(180, player_speed);
	image_angle = 90;
	image_speed = 1;
	sprite_index = sp_walk;
}
else if keyboard_check_released(ord("A"))
{
	motion_set(180, 0);
	image_speed = 0;
	sprite_index = sp_idle;
}

if keyboard_check_pressed(ord("S"))
{
	y += 128;//motion_set(270, player_speed);
	image_angle = 180;
	image_speed = 1;
	sprite_index = sp_walk;
}
else if keyboard_check_released(ord("S"))
{
	motion_set(270, 0);
	image_speed = 0;
	sprite_index = sp_idle;
}

if keyboard_check_pressed(ord("D"))
{
	x += 128;//motion_set(0, player_speed);
	image_angle = 270;
	image_speed = 1;
	sprite_index = sp_walk;
}
else if keyboard_check_released(ord("D"))
{
	motion_set(0, 0);
	image_speed = 0;
	sprite_index = sp_idle;
}

#endregion

//var _tl_water = layer_tilemap_get_id("tl_water");

if y <= 704 and y >= 192
{
	if position_meeting(x, y, ob_rock_right) or position_meeting(x, y, ob_rock_left)
	{
		//show_debug_message("rock");
		switch y
		{
			case 704:
				x -= ob_vehicles.vehicles_speed;
				break;
			case 576:
				x += 2 * ob_vehicles.vehicles_speed;
				break;
			case 448:
				x -= 3 * ob_vehicles.vehicles_speed;
				break;
			case 320:
				x += 4 * ob_vehicles.vehicles_speed;
				break;
			case 192:
				x -= 5 * ob_vehicles.vehicles_speed;
				break;
		}
	}
	else
	{
		//show_debug_message(string(_tl_water));
		global.player_live = 0;
		global.player_end = "drown";
		alarm[0] = 5;
		instance_create_layer(x, y, "Instances", ob_player_end);
		instance_destroy();
	}
}
else if y == 64 
{
	if x == 832
	{
		global.player_end = "winner";
		global.player_live = 0;
		instance_create_layer(x, y, "Instances", ob_player_end);
		instance_destroy();
	}
}

//clamp player movement
x = clamp(x, 64 , 1600);
y = clamp(y, 64, 1600);