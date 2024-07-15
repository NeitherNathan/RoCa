if (os_browser != browser_not_a_browser)
{
	show_debug_message("Async - HTTP");
	show_debug_message(json_encode(async_load), true);
	if (async_load[? "http_status"] == 200)
	{
	    show_debug_message("Set() function call succeeded!");
		mensagem = "CADASTRO FEITO";
		event_user(0); // Cadastro aceito
	}
	else
	{
	    var _error_message = async_load[? "errorMessage"];
		show_debug_message(_error_message);
		mensagem = "ERRO: " + _error_message;
		permitir_envio = true;
	}
}