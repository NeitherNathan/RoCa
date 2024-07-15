if (pulos > 0)
{
	velocidade_y = -forca_pulo;
	audio_play_sound(snd_pulo, 10, false);
	image_index = 0;
	pulos--;
	sprite_index = global.skins[global.skin_selecionada_index].pular;
	image_speed = 1;
	image_index = 0;
}