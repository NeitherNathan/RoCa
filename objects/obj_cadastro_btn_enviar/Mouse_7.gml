event_inherited();
if (permitir_envio && image_alpha == 1)
{
	var _contents =
	{
		nome : inst_cadastro_nome.texto_input,
	    data_nascimento : texto_aplicar_mascara(inst_cadastro_nascimento.texto_input, inst_cadastro_nascimento.texto_mascara, false),
	    cidade_estado : inst_cadastro_cidade.texto_input,
	    email : inst_cadastro_email.texto_input,
	    telefone : texto_aplicar_mascara(inst_cadastro_telefone.texto_input, inst_cadastro_telefone.texto_mascara, false),
	    responsavel : inst_cadastro_responsavel.texto_input
	};
	var _json_string = json_stringify(_contents, true);
	show_debug_message(_json_string);
	var _map = ds_map_create();
	ds_map_add(_map, "Content-Type", "application/json");
	request_id = http_request(
		"https://gknwgl2zpzljxdevstv7u7sczy0pwzod.lambda-url.us-east-2.on.aws/", 
		"POST", 
		_map, 
		_json_string);
	mensagem = "ENVIANDO";
	permitir_envio = false;
	ds_map_destroy(_map);
}