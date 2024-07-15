if (!global.cadastro_feito)
{
	var _lay_id = layer_get_id("Assets");
	var _spr_id = layer_sprite_get_id(_lay_id, "graphic_pause_pause_box");
	layer_sprite_yscale(_spr_id, 1);
	layer_sprite_y(_spr_id, layer_sprite_get_y(_spr_id) - 70);
}