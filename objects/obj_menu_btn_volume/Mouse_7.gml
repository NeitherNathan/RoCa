event_inherited();
if (!instance_exists(obj_fade))
{
	global.volume = global.volume == 1 ? 0 : 1;
	audio_master_gain(global.volume);
	image_alpha = lerp(0.5, 1, global.volume);
}
salvar_jogo();