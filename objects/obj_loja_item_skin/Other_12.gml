/// @description Atualizar modo botao

botao.modo_botao = LOJA_BOTAO_MODO.COMPRAR;
if (skin_index == global.skin_selecionada_index)
{
	botao.modo_botao = LOJA_BOTAO_MODO.EQUIPADO;
}
else if (global.skin_desbloqueada[skin_index])
{
	botao.modo_botao = LOJA_BOTAO_MODO.EQUIPAR;
}
botao.alarm[0] = 1; // Atualizar sprite