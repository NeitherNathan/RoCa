event_inherited();
if (visible && layer_get_visible(layer))
{
	//01 - 3 escudo + 3 Ima
	if (inst_gift_code_input.texto_input == "020486")
	{
		if(global.codigo01 == false){ 
		global.powerup_escudo += 3;
		global.powerup_ima += 3;
		global.codigo01 = true;
		global.fase_reiniciar = true;
		inst_gift_code_controller.pagina_atual = 1;
		inst_gift_code_controller._spritenumber = 1;
		inst_4446A543._gotolevel = false;
		salvar_jogo();
		return
		} 
		else{
			_CodigoJaUsado = true;
			}
	}	
	//02 - 150 moedas
	else if (inst_gift_code_input.texto_input == "096024")
	{
		if(global.codigo02 == false){
		global.moedas_coletadas += 150;
		show_debug_message(global.moedas_coletadas)
		global.codigo02 = true;
		global.fase_reiniciar = true;
		inst_gift_code_controller.pagina_atual = 1;
		inst_gift_code_controller._spritenumber = 2;
		inst_4446A543._gotolevel = false;
		salvar_jogo();
		return
		}
		else{
			_CodigoJaUsado = true;
			}
	}
	//03 - 3 vida
	else if (inst_gift_code_input.texto_input == "092384")
	{
		if(global.codigo03 == false){
		global.powerup_vida_extra += 3;
		global.fase_reiniciar = true;
		global.codigo03 = true;
		inst_gift_code_controller.pagina_atual = 1;
		inst_gift_code_controller._spritenumber = 3;
		inst_4446A543._gotolevel = false;
		salvar_jogo();
		return
		}
		else{
			_CodigoJaUsado = true;
			}
	}
	//04 - +1 imã +1 Escudo +1 Vida
	else if (inst_gift_code_input.texto_input == "038381")
	{
		if(global.codigo04 == false){
		global.powerup_vida_extra += 1;
		global.powerup_escudo += 1;
		global.powerup_ima += 1;
		global.codigo04 = true;
		inst_gift_code_controller.pagina_atual = 1;
		inst_gift_code_controller._spritenumber = 4;
		inst_4446A543._gotolevel = false;
		salvar_jogo();
		return
		} 
		else{
			_CodigoJaUsado = true;
			}
	}
	//05 - Halo
	else if (inst_gift_code_input.texto_input == "066864")
	{
		if(global.codigo05 == false){
		global.adereco_halo_comprado  = true;
		global.fase_reiniciar = true;
		global.codigo05 = true;
		inst_gift_code_controller.pagina_atual = 1;
		inst_gift_code_controller._spritenumber = 5;
		inst_4446A543._gotolevel = false;
		salvar_jogo();
		return
		}
		else{
			_CodigoJaUsado = true;
			}
	}
	else {
			_CodigoJaUsado =false;
	}
	

	
	var _encontrou_codigo = false;
	var _texto_dia_hoje = date_date_string(date_current_datetime());
	for (var _i = 0; _i >= -120; _i--)
	{
		var _novo_dia = date_inc_day(date_current_datetime(), _i);
		var _dia = date_get_day_of_year(_novo_dia);
		var _ano = date_get_year(_novo_dia);
		random_set_seed(_dia + (_ano * 400));
		var _codigo = string(irandom_range(100000, 999999));
		if (_codigo == inst_gift_code_input.texto_input)
		{
			_encontrou_codigo = true;
			ini_open("codigos.ini");
			var _tentativas = round(ini_read_real(_texto_dia_hoje, inst_gift_code_input.texto_input, 0));
			if (_tentativas < 3)
			{
				_tentativas++;
				ini_write_real(_texto_dia_hoje, inst_gift_code_input.texto_input, _tentativas);
				global.fase_reiniciar = true;
				inst_gift_code_controller.pagina_atual = 1;
				inst_gift_code_controller._spritenumber = 0;
				inst_4446A543._gotolevel = true;
			}
			else
			{
				//if(global.codigo04 > 0)
				//{
				//global.fase_reiniciar = true;
				//inst_gift_code_controller.pagina_atual = 1;
				//inst_gift_code_controller._spritenumber = 0;
				//inst_4446A543._gotolevel = true;
				//show_debug_message("TENTATIVAS A MAIS")
				//}
				//else
				//{
				var _feedback = instance_create_layer(x, y, "Instances_Feedback", obj_fase_feedback);
				_feedback.sprite_index = noone;
				_feedback.texto = "Limite de tentativas atingido \n para este código";
				_feedback.image_blend = c_red;
				//}
				
			}
			ini_close();
			break;
		}
	}
	if (!_encontrou_codigo)
	{
		
		var _feedback = instance_create_layer(x, y, "Instances_Feedback", obj_fase_feedback);
		_feedback.sprite_index = noone;

			if(_CodigoJaUsado==false){
			_feedback.texto = "Código incorreto";
			}
			else
			{
			_feedback.texto = "Código já usado";
			}


		_feedback.image_blend = c_red;
	}
}