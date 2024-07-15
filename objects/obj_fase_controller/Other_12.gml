/// @description Criar dente

var _dente_height = sprite_get_height(spr_quiz2);
instance_create_layer(
	room_width + irandom_range(dente_distancia_min, dente_distancia_max), 
	irandom_range(_dente_height, room_height * 0.4), 
	"Instances", 
	obj_fase_dente_quiz);