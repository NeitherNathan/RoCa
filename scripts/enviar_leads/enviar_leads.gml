function enviar_leads()
{
	var _arquivo_leads = file_text_open_append("Leads.csv");
	var _texto = "";
	_texto += inst_leads_input_nome.texto_input + ";";
	_texto += texto_aplicar_mascara(
		inst_leads_input_celular.texto_input, 
		inst_leads_input_celular.texto_mascara, 
		false) + ";";
	_texto += inst_leads_input_email.texto_input + ";";
	_texto += date_date_string(date_current_datetime()) + ";";
	_texto += date_time_string(date_current_datetime());
	file_text_write_string(_arquivo_leads, _texto);
	file_text_writeln(_arquivo_leads);
	file_text_close(_arquivo_leads);
	show_debug_message("Leads salvas: " + _texto);
}