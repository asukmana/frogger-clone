player_speed = 5;
image_speed = 0;
blink_count = 0;

tilemap_water = layer_tilemap_get_id("tl_water");

//0.25 is player_scale
player_width = sprite_get_width(sp_idle) * 0.25;
player_height = sprite_get_height(sp_idle) * 0.25;