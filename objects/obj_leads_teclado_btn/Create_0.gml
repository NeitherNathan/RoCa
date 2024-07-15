grid_x = 1;
grid_y = 1;
lista_vk = [[vk_char]];
if (custom_sprite != noone)
{
	sprite_index = custom_sprite;
}
y_offset = 0;
teclado_fundo = noone;
if (instance_exists(obj_cadastro_v2_teclado_fundo))
{
	teclado_fundo = instance_find(obj_cadastro_v2_teclado_fundo, 0);
	y_offset = y - teclado_fundo.ystart;
}