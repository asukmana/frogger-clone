randomize();
if global.player_live > 0
{
	for (var _i = 0; _i < 11; _i += 1)
	{
		if _i < 5
		{
		var _water_vehicles_left = choose(ob_ship_left, ob_rock_left);
		var _water_vehicles_right = choose(ob_ship_right, ob_rock_right);
			if _i % 2 == 0
			{
				instance_create_layer(room_width, 192 + 128 * _i, "Instances", _water_vehicles_right);    
			}
			else
			{
				instance_create_layer(0, 192 + 128 * _i, "Instances", _water_vehicles_left);    
			}
		}
		else if _i == 5
		{
			_i = 5;
		}
		else
		{			
			var _land_vehicles_left = choose(ob_car_1_left, ob_car_2_left, ob_car_3_left, ob_car_4_left, ob_car_5_left, ob_motorcycle_left);
			var _land_vehicles_right = choose(ob_car_1_right, ob_car_2_right, ob_car_3_right, ob_car_4_right, ob_car_5_right, ob_motorcycle_right);
			if _i % 2 == 0
			{
				instance_create_layer(room_width, 192 + 128 * _i, "Instances", _land_vehicles_right);    
			}
			else
			{
				instance_create_layer(0, 192 + 128 * _i, "Instances", _land_vehicles_left);    
			}
			//instance_create_layer(0, 192 + 128 * _i, "Instances", _land_vehicles);    
		}
	}

	var random_multiplier = random_range(0.1, 1);
	alarm[0] = random_multiplier * game_get_speed(gamespeed_fps);
}

//switch y
//{
//	case 192:
//		instance_create_layer(0, y, "Instances", ob_ship);
//		break;
//}