/// @description Efeito parte 2

image_alpha = max(image_alpha - 0.02, 0);
if (image_alpha == 0)
{
	instance_destroy();
}
else
{
	alarm[1] = 1; // Efeito parte 2
}