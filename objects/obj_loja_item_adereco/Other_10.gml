/// @description Comprar

switch (tipo_adereco)
{
	case "Alien" : global.adereco_alien_comprado = true; break;
	case "Droid" : global.adereco_droid_comprado = true; break;
	case "Fada"  : global.adereco_fada_comprado  = true; break;
	case "Halo"  : global.adereco_halo_comprado  = true; break;
	case "Slime" : global.adereco_slime_comprado = true; break;
}
botao.modo_botao = LOJA_BOTAO_MODO.EQUIPAR;
botao.alarm[0] = 1; // Atualizar sprite