if (room == rm_fase ||
	room == rm_fase_03)
{
	// Feather disable once GM1041
	sprite_delete(print_tela);
	print_tela = sprite_create_from_surface(application_surface, 0, 0, surface_get_width(application_surface), surface_get_height(application_surface), false, false, 0, 0);
}