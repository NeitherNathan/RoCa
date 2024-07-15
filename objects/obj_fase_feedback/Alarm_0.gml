/// @description Efeito parte 1

image_alpha = min(image_alpha + 0.1, 1);
if (image_alpha == 1)
{
	alarm[1] = 60; // Efeito parte 2
}
else
{
	alarm[0] = 1; // Efeito parte 1
}