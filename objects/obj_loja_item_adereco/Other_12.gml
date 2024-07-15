/// @description Equipado

switch (tipo_adereco)
{
	case "Alien" : global.adereco_alien_equipado = false; break;
	case "Droid" : global.adereco_droid_equipado = false; break;
	case "Fada"  : global.adereco_fada_equipado  = false; break;
	case "Halo"  : global.adereco_halo_equipado  = false; break;
	case "Slime" : global.adereco_slime_equipado = false; break;
}
botao.modo_botao = LOJA_BOTAO_MODO.EQUIPAR;
botao.alarm[0] = 1; // Atualizar sprite