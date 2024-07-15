draw_sprite_ext(
	global.personagem_sprite_index,
	global.personagem_image_index,
	global.personagem_x,
	global.personagem_y,
	global.personagem_scale,
	global.personagem_scale,
	0,
	merge_color(c_white, c_red, abs(sin(get_timer() / 100000))),
	1);