	
	//Getting base values from screen display
	var guiw = display_get_gui_width();
	var guih = display_get_gui_height();

	//BlackScreen Pause
	if (global.pause_alpha > 0)
	{
		if (global.pause == false)
			global.pause_alpha -= (1.0/180.0);
			
		draw_set_alpha(0.7 * global.pause_alpha);
		draw_set_color(c_black);
		draw_rectangle( 0, 0, guiw, guih, false);
		draw_set_alpha(1.0);
		
		if (global.pause == false)
		{
			//Contador
			var timer = (global.pause_alpha * 3.0);
		
			draw_set_font(fnt_luckiest_guy_50);
			draw_set_halign(fa_center);
			draw_set_valign(fa_middle);
			var _scale = lerp(1, 1.5, timer % 1);
			var _half_width = room_width / 2;
			var _half_height = room_height / 2;
			draw_set_color(c_black);
			draw_text_transformed(_half_width + 5, _half_height,     string(int64(timer + 1)), _scale, _scale, 0);
			draw_text_transformed(_half_width,     _half_height + 5, string(int64(timer + 1)), _scale, _scale, 0);
			draw_text_transformed(_half_width - 5, _half_height,     string(int64(timer + 1)), _scale, _scale, 0);
			draw_text_transformed(_half_width,     _half_height - 5, string(int64(timer + 1)), _scale, _scale, 0);
			draw_set_color(c_white);
			draw_text_transformed(_half_width, _half_height, string(int64(timer + 1)), _scale, _scale, 0);
		}
	}

	//Pause
	if (global.pause)
	{
		
	}
	else
	//Morte
	if (global.morte)
	{
		if (global.morte_alpha < 1.0)
		{
			global.morte_alpha += (1.0/60.0);
			if (global.morte_alpha >= 1.0)
			{
				//Enable objectos for death menu
				instance_activate_layer("Instances_GameOver");
				layer_set_visible("Instances_GameOver", true)
				instance_activate_layer("Assets_GameOver");
				layer_set_visible("Assets_GameOver", true);
			}
		}
		
		draw_set_alpha(0.7 * global.morte_alpha);
		draw_set_color(c_black);
		draw_rectangle( 0, 0, guiw, guih, false);
		draw_set_alpha(1.0);
	}
	
	//Reset Alpha
	draw_set_alpha(1.0);