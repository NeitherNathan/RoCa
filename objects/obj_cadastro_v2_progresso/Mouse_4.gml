inst_cadastro_v2_controller.pagina_atual = posicao;
cadastro_v2_atualizar_input_selecionado();
if (posicao == global.cadastro_paginas || posicao == inst_cadastro_v2_controller.pagina_estado)
{
	with (obj_cadastro_v2_teclado_fundo)
	{
		y_target = room_height + sprite_height;
	}
}