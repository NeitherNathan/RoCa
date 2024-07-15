//show_debug_message("Moeda");
global.moedas_coletadas++;
global.moedas_coletadas_ultima_corrida++;
instance_destroy(other.id);
audio_play_sound(snd_moeda, 10, false);