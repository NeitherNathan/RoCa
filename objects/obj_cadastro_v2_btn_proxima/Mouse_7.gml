event_inherited();
if (!position_meeting(mouse_x, mouse_y, obj_cadastro_v2_teclado_fundo) && visible)
{
	if (inst_cadastro_v2_controller.pagina_atual < global.cadastro_paginas)
	{
		inst_cadastro_v2_controller.pagina_atual = min(inst_cadastro_v2_controller.pagina_atual + 1, global.cadastro_paginas);
		cadastro_v2_atualizar_input_selecionado();
	}
	else // Enviar
	{
		if (permitir_envio)
		{
			var _plataforma = "Unknown OS";
			switch (os_type)
			{
				case os_windows: _plataforma = "Windows"; break;
				case os_ios    : _plataforma = "iOS"    ; break;
				case os_android: _plataforma = "Android"; break;
			}
			if (os_browser != browser_not_a_browser)
			{
				_plataforma = "Browser";
			}
			var _nascido_em = "0000";
			if (inst_cadastro_v2_nascimento.texto_input != "")
			{
				_nascido_em = string(date_get_year(date_current_datetime()) - int64(inst_cadastro_v2_nascimento.texto_input));
			}
			var _contents =
			{
				nome : inst_cadastro_v2_nome.texto_input,
				idade : inst_cadastro_v2_nascimento.texto_input,
			    cidade : inst_cadastro_v2_cidade.texto_input,
				estado : global.cadastro_estado.sigla,
				telefone : texto_aplicar_mascara(inst_cadastro_v2_telefone.texto_input, inst_cadastro_v2_telefone.texto_mascara, false),
			    email : inst_cadastro_v2_email.texto_input,
			    responsavel : inst_cadastro_v2_responsavel.texto_input,
				parentesco :  inst_cadastro_v2_parentesco.texto_input,
				data_cadastro : date_datetime_string(date_current_datetime()),
				plataforma : _plataforma,
				versao : GM_version,
				termo : "Aceito",
				nascido_em : _nascido_em
			};
			if (_contents.idade == "")
			{
				_contents.idade = "00";
			}
			
			var _json_string = json_stringify(_contents, true);
			show_debug_message(_json_string);
			mensagem = "ENVIANDO";
			permitir_envio = false;
			// Nota para o eu do futuro
			// Nao vai funcionar na build de windowns mesmo no modo REST
			// Sempre da uns erros no SDK que nao vale a pena ir atras de arrumar
			// Confia em mim
			if (os_type == os_android || os_type == os_ios || os_browser != browser_not_a_browser)
			{
				// Feather disable once GM1024
				if (!debug_mode)
				{
					listener_id = FirebaseFirestore("Cadastro").Set(_json_string);
				}
				else
				{
					var _datetime_string = 
					string_format(date_get_year(date_current_datetime()), 4, 0) + "_" + 
					string_format(date_get_month(date_current_datetime()), 2, 0) + "_" + 
					string_format(date_get_day(date_current_datetime()), 2, 0) + "_" + 
					string_format(date_get_hour(date_current_datetime()), 2, 0) + "_" + 
					string_format(date_get_minute(date_current_datetime()), 2, 0) + "_" + 
					string_format(date_get_second(date_current_datetime()), 2, 0);
					_datetime_string = string_replace_all(_datetime_string, " ", "0");
					listener_id = FirebaseFirestore("Cadastro/" + _datetime_string).Set(_json_string);
				}
			}
			else
			{
				mensagem = "FIRESTORE INDISPONÍVEL";
				event_user(0); // Cadastro aceito
			}
		}
	}
}