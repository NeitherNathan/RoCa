event_inherited();
if (visible && layer_get_visible(layer))
{
	var _encontrou_codigo = false;
	var _texto_dia_hoje = date_date_string(date_current_datetime());
	//show_debug_message(_texto_dia_hoje);
	for (var _i = 0; _i >= -120; _i--)
	{
		var _novo_dia = date_inc_day(date_current_datetime(), _i);
		var _dia = date_get_day_of_year(_novo_dia);
		var _ano = date_get_year(_novo_dia);
		random_set_seed(_dia + (_ano * 400));
		var _codigo = string(irandom_range(100000, 999999));
		if (_codigo == inst_menu_gift_code_input.texto_input)
		{
			_encontrou_codigo = true;
			ini_open("codigos.ini");
			var _tentativas = round(ini_read_real(_texto_dia_hoje, inst_menu_gift_code_input.texto_input, 0));
			if (_tentativas < 3)
			{
				_tentativas++;
				ini_write_real(_texto_dia_hoje, inst_menu_gift_code_input.texto_input, _tentativas);
				global.fase_reiniciar = true;
				criar_fade(rm_fase_03);
			}
			else
			{
				var _feedback = instance_create_layer(room_width / 2, room_height * 0.4, "Instances_Feedback", obj_fase_feedback);
				_feedback.sprite_index = noone;
				_feedback.texto = "Limite de tentativas atingido \n para este código";
				_feedback.image_blend = c_red;
			}
			ini_close();
			break;
		}
	}
	if (!_encontrou_codigo)
	{
		var _feedback = instance_create_layer(room_width / 2, room_height * 0.4, "Instances_Feedback", obj_fase_feedback);
		_feedback.sprite_index = noone;
		_feedback.texto = "Código incorreto";
		_feedback.image_blend = c_red;
	}
}