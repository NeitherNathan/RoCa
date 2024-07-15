/// @description Validar informacoes

image_alpha = 1;
with (obj_leads_input)
{
	if (id != inst_cadastro_responsavel.id)
	{
		if (string_length(string_lettersdigits(texto_input)) == 0)
		{
			other.image_alpha = 0.5;
		}
	}
}
with (obj_leads_input_mascara)
{
	if (string_length(texto_input) != string_length(string_digits(texto_mascara)))
	{
		other.image_alpha = 0.5;
	}
}
with (obj_leads_input_codigo)
{
	if (validador != 0)
	{
		other.image_alpha = 0.5;
	}
}
with (obj_leads_input_data)
{
	if (idade == -1)
	{
		other.image_alpha = 0.5;
	}
}
/*if (!inst_leads_toggle.is_on)
{
	image_alpha = 0.5;
}*/