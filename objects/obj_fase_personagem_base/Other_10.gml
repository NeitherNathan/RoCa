
	if (!ultima_colisao.colidiu_com_player)
	{
		ultima_colisao.colidiu_com_player = true;
		if (!invencibilidade)
		{
			audio_play_sound(snd_colisao, 10, false);
			invencibilidade = true;
			if (escudo)
			{
				alarm[0] = 60 * 3; // Tirar invencibilidade
				escudo = false;
			}
			else
			{
				//Morte
				global.pause_alpha = 0.0;
				global.pause = false;
				global.morte = true;
				
				alarm[0] = 60 * 6; // Tirar invencibilidade
				global.controller.velocidade *= 0.9;
			}
		}
	}