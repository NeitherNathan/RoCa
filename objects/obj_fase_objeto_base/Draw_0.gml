	
	draw_self();
	if (global.debug)
	{
		draw_set_color(c_black);
		draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, true);
	}
	//x = xstart - (global.distancia_ultima_corrida - distancia_de_criacao);

	if (game_is_freezed())
	{
		image_speed = 0;
	}
	else
	{
		image_speed = base_image_speed;
	}