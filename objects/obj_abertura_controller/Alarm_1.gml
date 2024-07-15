/// @description Tirar logo

image_alpha -= 0.01;
if (image_alpha > 0)
{
	alarm[1] = 1; // Tirar logo
}
else
{
	image_alpha = 0;
	logo_index++;
	if (logo_index < array_length(logo_lista))
	{
		sprite_index = logo_lista[logo_index];
		alarm[0] = 10;
	}
	else
	{
		alarm[2] = 5; // Carregar texturas loop
	}
}