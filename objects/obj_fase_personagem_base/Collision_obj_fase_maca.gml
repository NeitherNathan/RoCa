/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if (other.cannot_be_catch <= 0)
{
	global.moedas_coletadas= global.moedas_coletadas + 5;
	global.moedas_coletadas_ultima_corrida=global.moedas_coletadas_ultima_corrida + 5;
	instance_destroy(other.id);
	audio_play_sound(snd_moeda, 10, false);
	fase_feedback_moedas(other.moedas, other.x, other.y);
	

}
else
{
	other.image_alpha = 0
	instance_destroy(other, false)
}