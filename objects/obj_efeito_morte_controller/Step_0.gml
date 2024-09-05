alfa = min(alfa + 0.01, 0.5);
var _lay_id = layer_get_id("Background");
var _back_id = layer_background_get_id(_lay_id);
layer_background_alpha(_back_id, alfa);

if (game_is_freezed() == false)
{
	contador += 1;
}

if(contador >= 60 * 1.5)
{
effect_clear();
instance_deactivate_all(true)
instance_activate_layer("Instances_GameOver")
layer_set_visible("Instances_GameOver",true)
layer_set_visible("Assets_GameOver",true)
}