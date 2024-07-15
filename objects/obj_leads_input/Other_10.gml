/// @description Atualizar texto

if (is_selected)
{
	var _tamanho_texto = string_length(texto_input);
	switch (estilo_letra)
	{
		case "UPPER_CASE": texto_input = string_upper(keyboard_string); break;
		case "lower_case": texto_input = string_lower(keyboard_string); break;
	}
	if (apenas_letras)
	{
		texto_input = texto_apenas_letras(texto_input);
		keyboard_string = texto_input;
	}
	if (!permitir_espaco)
	{
		texto_input = string_replace_all(texto_input, " ", "");
		keyboard_string = texto_input;
	}
	if (_tamanho_texto != string_length(texto_input) && som_teclado != noone)
	{
		audio_play_sound(som_teclado, 10, false);
	}
}