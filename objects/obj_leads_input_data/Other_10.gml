event_inherited();
idade = -1;
if (string_length(texto_input) == string_length(string_digits(texto_mascara)))
{
	var _data_valida = date_valid_datetime(
		int64(string_copy(texto_input, 5, 4)), 
		int64(string_copy(texto_input, 3, 2)), 
		int64(string_copy(texto_input, 1, 2)), 
		0, 
		0, 
		0);
	if (_data_valida)
	{
		var _data = date_create_datetime(
		int64(string_copy(texto_input, 5, 4)), 
		int64(string_copy(texto_input, 3, 2)), 
		int64(string_copy(texto_input, 1, 2)), 
		0, 
		0, 
		0);
		var _data_comparar = date_compare_date(_data, date_current_datetime());
		if (_data_comparar >= 0)
		{
			mensagem = "DATA NO FUTURO";
		}
		else
		{
			idade = int64(date_year_span(_data, date_current_datetime()));
			//mensagem = "IDADE: " + string(idade);
		}
	}
	else
	{
		mensagem = "DATA INVÁLIDA";
	}
}
else
{
	mensagem = "";
}