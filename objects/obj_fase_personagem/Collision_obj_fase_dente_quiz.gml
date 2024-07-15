var _recompenca_quiz_desligado = 30;
if (global.quiz_habilitado)
{
	invencibilidade = true;
	alarm[0] = 60; // Tirar invencibilidade
	alarm[11] = 2; // Verificar quiz
	room_persistent = true;
	room_goto(rm_coletando_dente);
}
else
{
	global.moedas_coletadas += _recompenca_quiz_desligado;
	global.moedas_coletadas_ultima_corrida += _recompenca_quiz_desligado;
	fase_feedback_moedas(_recompenca_quiz_desligado, other.x, other.y);
	/*var _feedback = instance_create_layer(other.x, other.y, "Instances_HUD", obj_fase_feedback);
	_feedback.sprite_index = noone;
	_feedback.texto = string(_recompenca_quiz_desligado);
	_feedback.image_blend = c_green;*/
}
instance_destroy(other.id);