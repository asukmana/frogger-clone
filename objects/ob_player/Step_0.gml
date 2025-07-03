if keyboard_check(ord("W"))
{
	motion_set(90, player_speed);
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

if keyboard_check(ord("A"))
{
	motion_set(180, player_speed);
	image_angle = 90;
	image_speed = 1;
	sprite_index = sp_walk;
}
else if keyboard_check_released(ord("A"))
{
	motion_set(180, 0);
	//image_xscale = 0.5;
	image_speed = 0;
	sprite_index = sp_idle;
}

if keyboard_check(ord("S"))
{
	motion_set(270, player_speed);
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

if keyboard_check(ord("D"))
{
	motion_set(0, player_speed);
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

//clamp player movement
x = clamp(x, player_width / 2 , room_width - player_width / 2);
y = clamp(y, player_height / 2, room_height - player_height / 2);