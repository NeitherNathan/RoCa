show_debug_message("Async - Social");
show_debug_message(json_encode(async_load), true);
if (async_load[? "type"] == "FirebaseFirestore_Document_Set" || 
	async_load[? "type"] == "FirebaseFirestore_Collection_Add" ||
	async_load[? "type"] == "RESTFirebaseFirestore_Document_Set" ||
	async_load[? "type"] == "RESTFirebaseFirestore_Collection_Add")
{
    if (async_load[? "status"] == 200)
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