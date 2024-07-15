texto_cor = c_white;
sprite_index = spr_wrong_answer_button;
with (object_index)
{
	if (resposta_index == global.quiz[global.controller.quiz_index].resposta_correta_index)
	{
		texto_cor = c_white;
		sprite_index = spr_right_answer_button;
	}
}
if (sprite_index == spr_right_answer_button)
{
	global.moedas_coletadas += 60;
	global.moedas_coletadas_ultima_corrida += 60;
}
global.quiz_ultima_resposta_correta = sprite_index == spr_right_answer_button;
global.controller.alarm[0] = 60; // Voltar para o jogo