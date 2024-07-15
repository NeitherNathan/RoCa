var _image_index = (get_timer() / 1000000) * 24;
if (global.adereco_halo_equipado)
{
	draw_sprite_ext(
		spr_aderecos_halo_animacao,
		_image_index, 
		x + (global.skins[global.skin_selecionada_index].is_ca ?    0 :  -25),
		y + (global.skins[global.skin_selecionada_index].is_ca ? -150 : -125),
		1, 
		1, 
		0, 
		c_white, 
		image_alpha);
}
draw_sprite_ext(sprite_index, (get_timer() / 1000000) * 24, x, y, image_xscale, image_yscale, 0, c_white, 1);
if (global.adereco_alien_equipado)
{
	draw_sprite_ext(spr_enemy_alien, _image_index, bbox_left - 150, bbox_top + 100, 1, 1, 0, c_white, image_alpha);
}
if (global.adereco_droid_equipado)
{
	draw_sprite_ext(spr_aderecos_droid, _image_index, bbox_left - 150, bbox_top + 100, 1, 1, 0, c_white, image_alpha);
}
if (global.adereco_fada_equipado)
{
	draw_sprite_ext(spr_aderecos_fada, _image_index, bbox_left - 150, bbox_top + 100, 1, 1, 0, c_white, image_alpha);
}
if (global.adereco_slime_equipado)
{
	var _x = cos(get_timer() / 1000000);
	_x *= 25;
	draw_sprite_ext(spr_aderecos_slime, _image_index, bbox_left - 150 + _x, bbox_bottom - 100, 1, 1, 0, c_white, image_alpha);
}