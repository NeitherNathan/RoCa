var _dia = date_get_day_of_year(date_current_datetime());
var _ano = date_get_year(date_current_datetime());
random_set_seed(_dia + (_ano * 400));
show_debug_message(string(irandom_range(100000, 999999)));

/*var _arquivo = file_text_open_append("Codigos.csv");
var _texto = "";
for (var _i = 0; _i <= 1998; _i++)
{
	var _novo_dia = date_inc_day(date_current_datetime(), _i);
	_dia = date_get_day_of_year(_novo_dia);
	_ano = date_get_year(_novo_dia);
	random_set_seed(_dia + (_ano * 400));
	_texto = date_date_string(_novo_dia) + "," + string(irandom_range(100000, 999999));
	show_debug_message(_texto);
	file_text_write_string(_arquivo, _texto);
	file_text_writeln(_arquivo);
}
file_text_close(_arquivo);*/