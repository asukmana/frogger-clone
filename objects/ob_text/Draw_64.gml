draw_set_font(fn_play);
draw_set_color(c_black);

if global.player_live == 0
{
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text_transformed(view_wport[0] / 2, view_hport[0] / 2, "Game\nOver", 1, 1, 0);
	//show_debug_message("game over");
}

//reset alignment
draw_set_halign(fa_left);
draw_set_valign(fa_top);