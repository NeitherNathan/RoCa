var _image_index = (get_timer() / 1000000) * 24;
if (global.adereco_halo_equipado)
{
	draw_sprite_ext(
		spr_aderecos_halo_animacao,
		_image_index, 
		x + (global.skins[global.skin_selecionada_index].is_ca ?   0 : -10),
		y + (global.skins[global.skin_selecionada_index].is_ca ? -75 : -65),
		0.5, 
		0.5,
		0, 
		c_white, 
		image_alpha);
}
if (ima)
{
	draw_sprite(spr_vfx_magnet, _image_index, x, y + 50);
}
var _scale = 1;
if (sprite_index == global.skins[global.skin_selecionada_index].correr)
{
	_scale = 0.5;
}
draw_sprite_ext(sprite_index, image_index, x, y, _scale, _scale, image_angle, image_blend, image_alpha);
//draw_self();
if (escudo)
{
	draw_sprite(spr_vfx_shield, _image_index, x, y);
}
if (global.adereco_alien_equipado)
{
	draw_sprite_ext(spr_enemy_alien, _image_index, bbox_left - 200, bbox_top, 0.75, 0.75, 0, c_white, image_alpha);
}
if (global.adereco_droid_equipado)
{
	draw_sprite_ext(spr_aderecos_droid, _image_index, bbox_left - 200, bbox_top, 0.5, 0.5, 0, c_white, image_alpha);
}
if (global.adereco_fada_equipado)
{
	draw_sprite_ext(spr_aderecos_fada, _image_index, bbox_left - 200, bbox_top, 0.5, 0.5, 0, c_white, image_alpha);
}
if (global.adereco_slime_equipado)
{
	var _x = cos(get_timer() / 1000000);
	_x *= 25;
	_x += 200;
	draw_sprite_ext(spr_aderecos_slime, _image_index, _x, slime_y, 1, 1, 0, c_white, image_alpha);
}
global.personagem_image_index = image_index;
global.personagem_scale = _scale;
global.personagem_sprite_index = sprite_index;
global.personagem_x = x;
global.personagem_y = y;