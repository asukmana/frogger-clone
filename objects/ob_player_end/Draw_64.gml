draw_set_font(fn_play);
draw_set_color(c_black);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

//draw_rectangle(100, 100, view_wport[0] - 100, view_hport[0] - 100, true); 
			
if global.player_live == 0
{
	switch global.player_end
	{
		case "run over":
			draw_text_transformed(view_wport[0] / 2, view_hport[0] / 2, "You got run over\nGame Over", 1, 1, 0);
			break;
		case "drown":
			draw_text_transformed(view_wport[0] / 2, view_hport[0] / 2, "You drowned\nGame Over", 1, 1, 0);	
			break;
		case "winner":
			draw_text_transformed(view_wport[0] / 2, view_hport[0] / 2, "You\nwin", 1, 1, 0);
			break;
	//show_debug_message("game over");
	}
}

//reset alignment
draw_set_halign(fa_left);
draw_set_valign(fa_top);