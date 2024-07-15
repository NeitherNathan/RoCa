function texto_aplicar_mascara(_texto, _mascara, _mostrar_cursor)
{
	var _resultado = "";
	var _texto_index = 1;
	var _cursor = _mostrar_cursor;
	for (var _i = 1; _i <= string_length(_mascara); _i++)
	{
		var _char = string_char_at(_mascara, _i);
		if (_char  == "0")
		{
			if (_texto_index <= string_length(_texto))
			{
				var _char_input = string_char_at(_texto, _texto_index);
				_resultado += _char_input;
				_texto_index++;
			}
			else
			{
				if (int64(current_time / 500) % 2 == 0 && _cursor)
				{
					_resultado += "|";
					_cursor = false;
				}
				else
				{
					_resultado += "_";
				}
			}
		}
		else
		{
			_resultado += _char;
		}
	}
	return _resultado;
}