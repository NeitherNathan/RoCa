/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if (other.cannot_be_catch <= 0)
{
	global.moedas_coletadas++;
	global.moedas_coletadas_ultima_corrida++;
	instance_destroy(other.id);
	audio_play_sound(snd_moeda, 10, false);
}
else
{
	other.image_alpha = 0
	instance_destroy(other, false)
}