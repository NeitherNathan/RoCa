x = lerp(x, xstart + ((8 - inst_cadastro_v2_controller.pagina_atual) * room_width), 0.1);

if (arrastar)
{
	if (camera_y_ultimo_frame == noone)
	{
		camera_y_ultimo_frame = window_mouse_get_y();
	}
	var _delta_y = (window_mouse_get_y() - camera_y_ultimo_frame);
	camera_y_ultimo_frame = window_mouse_get_y();
	texto_y += _delta_y;
	texto_y = clamp(texto_y, -texto_height - surface_padding + surface_height, surface_padding);
}