if (async_load[? "id"] == request_id)
{
	show_debug_message(async_load[? "http_status"]);
	if (async_load[? "http_status"] == 200)
	{
		mensagem = "CADASTRO FEITO";
		global.moedas_coletadas += 100;
		global.cadastro_feito = true;
		global.quiz_habilitado = inst_cadastro_nascimento.idade >= 7;
		global.mostrar_feedback_cadastro = true;
		salvar_jogo();
		criar_fade(rm_menu, 1.5);
	}
	else
	{
		mensagem = "ERRO: " + string(async_load[? "http_status"]);
		permitir_envio = true;
	}
}