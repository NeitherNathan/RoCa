/// @desc  Mostra o feedback de moedas coletadas
/// @param {real} _valor  Valor das moedas
/// @param {real} _x Posicao X
/// @param {real} _y Posicao Y
function fase_feedback_moedas(_valor, _x, _y)
{
	/*var _feedback_texto = instance_create_layer(_x, _y, "Instances_HUD", obj_fase_feedback);
	_feedback_texto.sprite_index = noone;
	if (_valor > 0)
	{
		_feedback_texto.texto = "+";
	}
	_feedback_texto.texto += string(_valor);
	_feedback_texto.image_blend = _valor >= 0 ? c_green : c_red;*/
	var _moedas = instance_find(obj_menu_moedas, 0);
	var _feedback_02 = instance_create_layer(_moedas.bbox_right / 2, _moedas.y, "Instances_HUD", obj_fase_feedback);
	_feedback_02.sprite_index = noone;
	if (_valor > 0)
	{
		_feedback_02.texto = "+";
	}
	_feedback_02.texto += string(_valor);
	_feedback_02.image_blend = _valor >= 0 ? c_green : c_red;
	_feedback_02.fonte = fnt_luckiest_guy_50;
}