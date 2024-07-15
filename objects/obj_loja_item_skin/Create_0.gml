event_inherited();
if (skin_index == global.skin_selecionada_index)
{
	botao.modo_botao = LOJA_BOTAO_MODO.EQUIPADO;
}
else if (global.skin_desbloqueada[skin_index])
{
	botao.modo_botao = LOJA_BOTAO_MODO.EQUIPAR;
}
botao.image_xscale = 0.75;
botao.y = bbox_bottom - 75;
x_offset = global.loja_skin_x_offset;
x = xstart + x_offset;