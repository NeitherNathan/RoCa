/// @description Carregar texturas loop

textura_index++;
if (textura_index < array_length(textura_lista))
{
	alarm[3] = 2; // Carregar textura
	alarm[2] = 5; // Carregar texturas loop
}
else
{
	criar_fade(rm_menu);
}