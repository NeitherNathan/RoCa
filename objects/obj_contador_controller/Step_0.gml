var _dt = delta_time / 1000000;
timer -= _dt;
if (timer < 0)
{
	room_goto(global.fase_room_atual);
}
alfa = max(alfa - 0.01, 0);
var _lay_id = layer_get_id("Background");
var _back_id = layer_background_get_id(_lay_id);
layer_background_alpha(_back_id, alfa);