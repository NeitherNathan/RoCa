alfa = min(alfa + 0.01, 0.5);
var _lay_id = layer_get_id("Background");
var _back_id = layer_background_get_id(_lay_id);
layer_background_alpha(_back_id, alfa);