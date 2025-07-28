/// @description Atualizar sprite

switch (modo_botao)
{
	case LOJA_BOTAO_MODO.COMPRAR: sprite_index = spr_store_skin_halo_button; break;
	case LOJA_BOTAO_MODO.EQUIPADO: sprite_index = spr_store_skin_equiped; break;
	case LOJA_BOTAO_MODO.EQUIPAR: sprite_index = spr_store_skin_equip_button; break;
}