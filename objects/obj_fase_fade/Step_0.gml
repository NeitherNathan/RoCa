var _dt = delta_time / 1000000;
x -= (global.controller.velocidade * (_dt * 60));
if (x < 0 && !mudou_fase)
{
	global.controller.fase_index = (global.controller.fase_index + 1) % 2;
	var _a = layer_get_all_elements(layer_get_id("Assets_Prefab"));
	for (var _i = 0; _i < array_length(_a); _i++;)
	{
	    if (layer_get_element_type(_a[_i]) == layerelementtype_sequence)
	    {
	        layer_sequence_destroy(_a[_i]);
	    }
	}
	with (obj_fase_objeto_base)
	{
		if (object_index != obj_fase_dente_quiz)// &&
			//object_index != obj_fase_moeda &&
			//object_index != obj_inimigo_carro)
		{
			instance_destroy();
		}
	}
	with (obj_fase_controller)
	{
		event_user(15); // Criar prefab
	}
	mudou_fase = true;
}
if (x < global.cenario_width * -2)
{
	instance_destroy();
}