if global.player_end == "winner"
{
	var _color = make_colour_rgb(irandom(255),irandom(255),irandom(255));
	var _position_x = random(room_width);
	var _position_y = random(room_height);
	effect_create_above(ef_firework, _position_x, _position_y, 2, _color);
}