/// @description Comprar

switch (tipo_powerup)
{
	case "Escudo"    : global.powerup_escudo++    ; break;
	case "Imã"       : global.powerup_ima++       ; break;
	case "Vida Extra": global.powerup_vida_extra++; break;
}
var _feedback = instance_create_layer(x + 125, bbox_bottom - 325, "Instances_Feedback", obj_fase_feedback);
_feedback.sprite_index = noone;
_feedback.texto = "+1";
_feedback.image_blend = c_green;