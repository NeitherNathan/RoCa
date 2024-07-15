/// @description Reward

if (global.admob_menu_videos_assistidos % 5 != 0)
{
	global.moedas_coletadas += recompenca;
	var _moedas = instance_find(obj_menu_moedas, 0);
	var _x_half = (_moedas.bbox_left + _moedas.bbox_right) / 2;
	var _y_half = (_moedas.bbox_top + _moedas.bbox_bottom) / 2;
	var _feedback = instance_create_layer(_x_half, _y_half, "Instances_Feedback", obj_fase_feedback);
	_feedback.sprite_index = noone;
	_feedback.texto = "+" + string(recompenca);
	_feedback.image_blend = c_green;
}
else
{
	var _objeto = noone;
	switch (global.admob_menu_proxima_recompenca)
	{
		case "escudo":
			_objeto = instance_find(obj_powerup_escudo, 0);
			global.powerup_escudo += 1;
			break;
			
		case "ima":
			_objeto = instance_find(obj_powerup_ima, 0);
			global.powerup_ima += 1;
			break;
			
		case "vida_extra":
			_objeto = instance_find(obj_powerup_vida_extra, 0);
			global.powerup_vida_extra += 1;
			break;
	}
	var _feedback = instance_create_layer(_objeto.bbox_right, _objeto.bbox_top, "Instances_Feedback", obj_fase_feedback);
	_feedback.sprite_index = noone;
	_feedback.texto = "+1";
	_feedback.image_blend = c_green;
}
global.admob_menu_videos_assistidos += 1;
event_user(2); // Recompenca especial
salvar_jogo();