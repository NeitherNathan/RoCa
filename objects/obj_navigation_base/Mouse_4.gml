if (visible && layer_get_visible(layer))
{
	with (obj_navigation_base)
	{
		is_selected = false;
		alarm[11] = 1; // On new selection
	}
	is_selected = true;
	if (is_button)
	{
		image_index = 2 + index_inicial;
	}
}