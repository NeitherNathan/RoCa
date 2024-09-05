if (is_button)
{
	image_index = 1 + image_speed;
	if (mouse_check_button(mb_left))
	{
		image_index = 2 + image_speed;
	}
}