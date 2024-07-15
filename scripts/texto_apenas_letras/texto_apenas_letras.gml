/// @desc  Function Remove caracteres que nao sao letras
/// @param {string} _texto  Texto
/// @returns {string} Texto corrigido
function texto_apenas_letras(_texto)
{
	var _resultado = "";
	for (var _i = 1; _i <= string_length(_texto); _i++) 
	{
		var _char = string_char_at(_texto, _i);
		if (string_length(string_letters(_char)) == 1 || _char == " " || _char == "ç" || _char == "Ç")
		{
			_resultado += _char;
		}
	}
	return _resultado;
}