/// @description Equipar

global.adereco_alien_equipado = false;
global.adereco_droid_equipado = false;
global.adereco_fada_equipado  = false;
global.adereco_halo_equipado  = false;
global.adereco_slime_equipado = false;
with (obj_loja_item_adereco)
{
	if (botao.modo_botao == LOJA_BOTAO_MODO.EQUIPADO)
	{
		botao.modo_botao = LOJA_BOTAO_MODO.EQUIPAR;
		botao.alarm[0] = 1; // Atualizar sprite
	}
}
switch (tipo_adereco)
{
	case "Alien" : global.adereco_alien_equipado = true; break;
	case "Droid" : global.adereco_droid_equipado = true; break;
	case "Fada"  : global.adereco_fada_equipado  = true; break;
	case "Halo"  : global.adereco_halo_equipado  = true; break;
	case "Slime" : global.adereco_slime_equipado = true; break;
}
botao.modo_botao = LOJA_BOTAO_MODO.EQUIPADO;
botao.alarm[0] = 1; // Atualizar sprite