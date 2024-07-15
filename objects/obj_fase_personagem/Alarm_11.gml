/// @description Verificar quiz

if (global.quiz_ultima_resposta_correta)
{
	var _recompenca_quiz = 60;
	//global.moedas_coletadas += _recompenca_quiz;
	//global.moedas_coletadas_ultima_corrida += _recompenca_quiz;
	fase_feedback_moedas(_recompenca_quiz, bbox_right + 50, y);
}