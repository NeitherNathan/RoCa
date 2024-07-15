if (global.debug)
{
	draw_set_font(fnt_luckiest_guy_36);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	if (fps >= 50)
	{
		draw_set_color(c_green);
	}
	else if (fps >= 30)
	{
		draw_set_color(c_yellow);
	}
	else
	{
		draw_set_color(c_red);
	}
	draw_text(room_width / 2, 10, string(fps));
	draw_set_color(c_black);
	draw_set_font(-1);
	draw_set_halign(fa_left);
	draw_set_valign(fa_bottom);
	draw_text(10, room_height - 10, string(velocidade));
}
/*var _layer = layer_get_id("Assets_Prefab");
var _sequences = layer_get_all_elements(_layer);
for (var _i = 0; _i < array_length(_sequences); _i++)
{
	if (layer_get_element_type(_sequences[_i]) == layerelementtype_sequence)
	{
		var _s = layer_sequence_get_sequence(_sequences[_i]);
		var _active_tracks = _s.tracks;
		show_debug_message("teste");
	}
}*/