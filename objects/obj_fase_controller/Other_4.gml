global.controller = id;
room_persistent = false;
if (global.fase_reiniciar)
{
	global.fase_reiniciar = false;
	room_restart();
}
else
{
	var _layer = layer_get_id("Assets_Prefab");
	var _sequences = layer_get_all_elements(_layer);
	for (var _i = 0; _i < array_length(_sequences); _i++)
	{
		if (layer_get_element_type(_sequences[_i]) == layerelementtype_sequence)
		{
			layer_sequence_play(_sequences[_i]);
		}
	}
}