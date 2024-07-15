if (is_button)
{
	if (clicado)
	{
		image_xscale = image_xscale_start + (cos(get_timer() / 50000) / 25);
		image_yscale = image_yscale_start + (sin(get_timer() / 50000) / 25);
	}
	else
	{
		image_xscale = lerp(image_xscale, image_xscale_start, 0.1);
		image_yscale = lerp(image_yscale, image_yscale_start, 0.1);
	}
}