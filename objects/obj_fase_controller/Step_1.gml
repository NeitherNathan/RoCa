if (room == rm_fase)
{
	velocidade += aceleracao;
	velocidade = min(velocidade, limites_velocidade[limite_velocidade_index][0]);
	if (fase_progresso > limites_velocidade[limite_velocidade_index][1])
	{
		if (limite_velocidade_index < array_length(limites_velocidade) - 1)
		{
			limite_velocidade_index++;
		}
	}
}
if (room == rm_fase_03)
{
	velocidade += 0.001;
}
var _dt = delta_time / 1000000;
_dt = min(_dt, 0.1);
global.distancia_ultima_corrida += (velocidade * (_dt * 60));
if (room == rm_fase || room == rm_fase_03)
{
	var _layer = layer_get_id("Assets_Prefab");
	var _sequences = layer_get_all_elements(_layer);
	var _sequence_x_mais_longe = 0;
	//show_debug_message(string(array_length(_sequences)));
	for (var _i = 0; _i < array_length(_sequences); _i++)
	{
		if (layer_get_element_type(_sequences[_i]) == layerelementtype_sequence)
		{
			var _sequence_x = layer_sequence_get_x(_sequences[_i]);
			_sequence_x_mais_longe = max(_sequence_x_mais_longe, _sequence_x);
			if (_sequence_x > -room_width)
			{
				layer_sequence_x(_sequences[_i], _sequence_x - (velocidade * (_dt * 60)));
			}
			else
			{
				layer_sequence_destroy(_sequences[_i]);
			}
		}
		//show_debug_message(string(_sequence_x));
	}
	if (_sequence_x_mais_longe < room_width)
	{
		event_user(15); // Criar prefab
	}
}