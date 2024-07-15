event_inherited();
mensagem = "";
texto_input = "";
alarm[11] = 1; // On new selection
if (room == rm_cadastro_02)
{
	x = lerp(x, xstart + ((cadastro_pagina - inst_cadastro_v2_controller.pagina_atual) * room_width), 1);
}