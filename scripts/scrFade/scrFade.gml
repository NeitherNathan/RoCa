function scr_fade()
{
	//var _dt = clamp(delta_time / 1000000, 0.01, 0.02);
	alpha_fade = clamp(alpha_fade + (fade * 0.03), 0, 1.0);
	if(alpha_fade == 1)
	{
		global.pause = false;
		global.morte = false;
		room_goto(global.room_depois_fade);
		fade = -1;
	}
	if((alpha_fade == 0) && (fade = -1))
	{
		global.can_fade = false;
		instance_destroy();
	}
	draw_set_color(c_black);
	draw_set_alpha(alpha_fade);
	draw_rectangle(0, 0, room_width, room_height, false);
	draw_set_alpha(1);
}


function criar_fade (_nova_sala, _espera = 0)
{
	if (!instance_exists(obj_fade))
	{
		global.room_depois_fade = _nova_sala;
		var _feedback = instance_create_depth(0, 0, 0, obj_fade);
		_feedback.espera = _espera;
	}
}