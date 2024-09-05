var _dt = delta_time / 1000000;
timer -= _dt;
if (timer < 0)
{
	if(CounterType == 0){
	room_goto(global.fase_room_atual);
	}
	if(CounterType == 1){
	//test
	with (obj_fase_btn_pause)
	{
		instance_activate_all()
		instance_deactivate_layer("Instances_GameOver");
		global.pause = false;
		instance_destroy(other);
		}
	}

}
alfa = max(alfa - 0.01, 0);
var _lay_id = layer_get_id("Background");
var _back_id = layer_background_get_id(_lay_id);
layer_background_alpha(_back_id, alfa);