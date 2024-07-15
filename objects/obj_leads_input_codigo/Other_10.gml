event_inherited();
if (is_selected)
{
	var _valor = ds_map_find_value(global.codigos, texto_input);
	if (is_undefined(_valor))
	{
		validador = -1;
	}
	else
	{
		validador = _valor;
	}
}