if (!instance_exists(obj_qst_fundo))
{
	instance_create_depth(0, 0, 0, obj_qst_fundo);
}
if (!audio_is_playing(snd_musica))
{
	audio_play_sound(snd_musica, 10, true);
}
if (!instance_exists(obj_monetizacao_controller))
{
	instance_create_depth(0, 0, 0, obj_monetizacao_controller);
}