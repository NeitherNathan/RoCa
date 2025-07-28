carregar_jogo();
if (global.mostrar_feedback_cadastro)
{
	global.mostrar_feedback_cadastro = false;
	var _moedas = instance_find(obj_menu_moedas, 0);
	var _x_half = (_moedas.bbox_left + _moedas.bbox_right) / 2;
	var _y_half = (_moedas.bbox_top + _moedas.bbox_bottom) / 2;
	var _feedback = instance_create_layer(_x_half, _y_half, "Instances_Feedback", obj_fase_feedback);
	_feedback.sprite_index = noone;
	_feedback.texto = "+ " + string(global.cadastro_recompenca);
	_feedback.image_blend = c_green;
}
