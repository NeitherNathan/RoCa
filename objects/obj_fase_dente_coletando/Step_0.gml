var _dt = delta_time / 1000000;
//x = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) / 2);
//y = camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0]) / 2);
image_xscale += (_dt * velocidade);
if (image_xscale > 1)
{
	temporizador += _dt * velocidade;
	image_xscale -= (_dt * velocidade);
	if (temporizador > 1 && !mudou_de_sala)
	{
		mudou_de_sala = true;
		room_persistent = true;
		// COLOCAR O ROOM CORRETO
		room_goto(rm_quiz);
	}
	if (temporizador > 2)
	{
		image_xscale += (_dt * velocidade);
		image_alpha -= _dt * velocidade;
		if (image_alpha <= 0)
		{
			room_persistent = false;
			// TROCAR PELO ROOM DA FASE
			room_goto(rm_fase);
			instance_destroy();
		}
	}
}
image_yscale = image_xscale;
//image_angle = clamp(image_angle + random_range(-1, 1), -15, 15);