/// @description Atualizar texto

if (is_selected)
{
	var _tamanho_texto = string_length(texto_input);
	texto_input = string_upper(keyboard_string);
	texto_input = string_digits(texto_input);
	if (string_length(texto_input) > string_length(string_digits(texto_mascara)))
	{
		texto_input = string_copy(texto_input, 1, string_length(string_digits(texto_mascara)));
	}
	keyboard_string = texto_input;
	if (_tamanho_texto != string_length(texto_input) && som_teclado != noone)
	{
		audio_play_sound(som_teclado, 10, false);
	}
}