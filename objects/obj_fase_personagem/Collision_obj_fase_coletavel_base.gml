global.moedas_coletadas = max(global.moedas_coletadas + other.moedas, 0);
global.moedas_coletadas_ultima_corrida = max(global.moedas_coletadas_ultima_corrida + other.moedas, 0);
// Feather disable once GM1041
fase_feedback_moedas(other.moedas, other.x, other.y);
/*var _feedback_texto = instance_create_layer(other.x, other.y, "Instances_HUD", obj_fase_feedback);
_feedback_texto.sprite_index = noone;
_feedback_texto.texto = string(other.moedas);
_feedback_texto.image_blend = other.moedas >= 0 ? c_green : c_red;*/
instance_destroy(other.id);