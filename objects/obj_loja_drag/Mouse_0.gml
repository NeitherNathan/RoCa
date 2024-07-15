if (!position_meeting(mouse_x, mouse_y, obj_btn_base) && visible && layer_get_visible(layer))
{
	if (camera_x_ultimo_frame == noone)
	{
		camera_x_ultimo_frame = window_mouse_get_x();
	}
	var _delta_x = (window_mouse_get_x() - camera_x_ultimo_frame);
	camera_x_ultimo_frame = window_mouse_get_x();
	with (obj_loja_item_skin)
	{
		// Aumentar em 1 o -12 para cada skin nova
		x_offset = clamp(x_offset + _delta_x, 570 * -12, 0);
	}
	var _skin = instance_find(obj_loja_item_skin, 0);
	global.loja_skin_x_offset = _skin.x_offset;
}