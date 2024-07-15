/// @description Mostrar logo

image_alpha += 0.01;
if (image_alpha < 1)
{
	alarm[0] = 1; // Mostrar logo
}
else
{
	image_alpha = 1;
	alarm[1] = 60; // Tirar logo
}