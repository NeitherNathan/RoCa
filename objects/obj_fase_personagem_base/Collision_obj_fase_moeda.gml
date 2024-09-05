////show_debug_message("Moeda");

	if (other.naopegar <= 0)
	{
		global.moedas_coletadas++;
		global.moedas_coletadas_ultima_corrida++;
		instance_destroy(other.id);
		audio_play_sound(snd_moeda, 10, false);
	}

	