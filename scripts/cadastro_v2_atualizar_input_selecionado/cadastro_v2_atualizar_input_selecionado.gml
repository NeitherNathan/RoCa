function cadastro_v2_atualizar_input_selecionado()
{
	var _lista_input = 
	[
		inst_cadastro_v2_nome,
		inst_cadastro_v2_nascimento,
		inst_cadastro_v2_cidade,
		noone,
		inst_cadastro_v2_telefone,
		inst_cadastro_v2_email,
		inst_cadastro_v2_responsavel
	];
	for (var _i = 0; _i < array_length(_lista_input); _i++)
	{
		if (_lista_input[_i] != noone)
		{
			_lista_input[_i].is_selected = inst_cadastro_v2_controller.pagina_atual == _i;
		}
	}
	with (obj_cadastro_v2_progresso)
	{
		event_user(0); // Atualizar sprite
	}
	if (inst_cadastro_v2_controller.pagina_atual < array_length(_lista_input))
	{
		if (_lista_input[inst_cadastro_v2_controller.pagina_atual] != noone)
		{
			keyboard_string = _lista_input[inst_cadastro_v2_controller.pagina_atual].texto_input;
		}
	}
	inst_cadastro_v2_btn_anterior.visible = inst_cadastro_v2_controller.pagina_atual > 0;
	if (inst_cadastro_v2_controller.pagina_atual < global.cadastro_paginas)
	{
		inst_cadastro_v2_btn_proxima.sprite_index = spr_figma_btn_base;
		inst_cadastro_v2_btn_proxima.visible = true;
	}
	else
	{
		with (obj_cadastro_v2_dados)
		{
			event_user(0); // Validar informacoes
		}
		inst_cadastro_v2_btn_proxima.sprite_index = spr_figma_btn_enviar;
		var _visible = true;
		for (var _i = 0; _i < instance_number(obj_cadastro_v2_dados); _i++)
		{
			var _dados = instance_find(obj_cadastro_v2_dados, _i);
			if (!_dados.informacao_validada)
			{
				_visible = false;
			}
		}
		inst_cadastro_v2_btn_proxima.visible = _visible;
	}
}