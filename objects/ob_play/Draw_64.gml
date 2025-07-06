///@description Draw lives

draw_set_font(fn_play);
draw_set_color(c_black);
//draw_rectangle(100, 100, view_wport[0] - 100, view_hport - 100, false);

//draw_set_halign(fa_center);
//draw_set_valign(fa_middle);

//draw_set_color(c_black);

for (var i = 0; i < global.player_live; i += 1)
{
	draw_sprite_ext(sp_idle, -1, view_wport[0] - 30 - 40 * i, view_hport[0] - 30, 0.0625, 0.0625, 0, c_white, 1);
}

//draw_sprite_ext(sp_idle, -1, room_width / 2 , room_height / 2 , 0.5, 0.5, 0, c_white, 1);

//reset alignment
draw_set_halign(fa_left);
draw_set_valign(fa_top);