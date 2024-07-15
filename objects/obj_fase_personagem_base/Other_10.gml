/// @description Colisao

//if (!instance_exists(obj_fase_fade))
//{
	if (!ultima_colisao.colidiu_com_player)
	{
		ultima_colisao.colidiu_com_player = true;
		if (!invencibilidade)
		{
			//show_debug_message("Colisão");
			/*var _obstaculo = instance_place(x, y, obj_fase_objeto_base);
			if (_obstaculo != noone)
			{
				show_debug_message("Bateu em " + object_get_name(_obstaculo.object_index) + " || " + string(_obstaculo.id));
				show_debug_message("x: " + string(_obstaculo.x) + " || xstart: " + string(_obstaculo.xstart) + " || xprevious: " + string(xprevious));
			}*/
			audio_play_sound(snd_colisao, 10, false);
			invencibilidade = true;
			if (escudo)
			{
				alarm[0] = 60 * 3; // Tirar invencibilidade
				escudo = false;
			}
			else
			{
				alarm[0] = 60 * 6; // Tirar invencibilidade
				room_persistent = true;
				global.controller.velocidade *= 0.9;
				//global.personagem_x = ultima_colisao.x;
				//global.personagem_y = ultima_colisao.y;
				//global.personagem_x = x;
				//global.personagem_y = y;
				room_goto(rm_efeito_morte);
			}
		}
	}
//}
/*else
{
	show_debug_message("Fade na tela, ignorando colisao");
}*/