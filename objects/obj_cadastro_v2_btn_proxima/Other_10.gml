/// @description Cadastro aceito

global.moedas_coletadas += global.cadastro_recompenca;
global.cadastro_feito = true;
global.mostrar_feedback_cadastro = true;
if (inst_cadastro_v2_nascimento.texto_input != "")
{
	var _idade = int64(inst_cadastro_v2_nascimento.texto_input);
	global.quiz_habilitado = _idade >= 7;
}
salvar_jogo();
criar_fade(rm_menu, 1.5);