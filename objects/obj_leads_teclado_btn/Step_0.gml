if (teclado_fundo != noone)
{
	y = teclado_fundo.y + y_offset;
}
if (room == rm_gift_code)
{
	x = lerp(x, xstart + ((pagina - inst_gift_code_controller.pagina_atual) * room_width), 0.1);
}