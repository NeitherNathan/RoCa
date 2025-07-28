event_inherited();
if (visible && layer_get_visible(layer))
{
	switch (modo_botao)
	{
		case LOJA_BOTAO_MODO.COMPRAR:
			//if (global.moedas_coletadas >= consumivel.preco)
			//{
			//	global.moedas_coletadas -= consumivel.preco;
			//	with (consumivel)
			//	{
			//		// Feather disable once GM2025
			//		event_user(0); // Comprar
			//	}
			//	salvar_jogo();
			//	var _feedback_comprado = instance_create_layer(x, bbox_top, "Instances_Feedback", obj_fase_feedback);
			//	_feedback_comprado.sprite_index = noone;
			//	_feedback_comprado.texto = "Comprado";
			//	_feedback_comprado.image_blend = c_green;
			//}
			//else
			//{
			//	with (obj_menu_moedas)
			//	{
			//		image_blend = c_red;
			//	}
				var _feedback = instance_create_layer(x, bbox_top, "Instances_Feedback", obj_fase_feedback);
				_feedback.sprite_index = noone;
				_feedback.texto = "Item Bloqueado";
				_feedback.image_blend = c_red;
			//}
			break;
			
		case LOJA_BOTAO_MODO.EQUIPAR:
			with (consumivel)
			{
				event_user(1); // Equipar
			}
			salvar_jogo();
			break;
			
		case LOJA_BOTAO_MODO.EQUIPADO:
			with (consumivel)
			{
				event_user(2); // Equipado
			}
			salvar_jogo();
			break;
	}
	alarm[0] = 2; // Atualizar sprite
}