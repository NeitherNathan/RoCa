var _distancia = global.distancia_ultima_corrida;
draw_sprite_tiled(sprites_cenario[global.controller.fase_index].ceu,   0, _distancia * parallax_ceu   * -1, 0);
if (!instance_exists(obj_fase_fade))
{
	draw_sprite_tiled(sprites_cenario[global.controller.fase_index].fundo, 0, _distancia * parallax_fundo * -1, 0);
	draw_sprite_tiled(sprites_cenario[global.controller.fase_index].chao,  0, _distancia * parallax_chao  * -1, 0);
}
else
{
	var _fade = instance_find(obj_fase_fade, 0);
	var _surface = surface_create(room_width, room_height);
	surface_set_target(_surface);
	draw_sprite_tiled(sprites_cenario[global.controller.fase_index].fundo, 0, _distancia * parallax_fundo * -1, 0);
	draw_sprite_tiled(sprites_cenario[global.controller.fase_index].chao,  0, _distancia * parallax_chao  * -1, 0);
	surface_reset_target();
	if (_fade.x - global.cenario_width > 0)
	{
		draw_surface_part(_surface, 0, 0, _fade.x - global.cenario_width, 1080, 0, 0);
	}
	else if (_fade.x + (global.cenario_width * 2) < room_width)
	{
		draw_surface_part(_surface, _fade.x + (global.cenario_width * 2), 0, room_width - (_fade.x + (global.cenario_width * 2)), 1080, _fade.x + (global.cenario_width * 2), 0);
	}
	surface_free(_surface);
}