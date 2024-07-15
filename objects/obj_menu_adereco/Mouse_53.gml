/*var _personagem = instance_find(obj_menu_personagem, 0);
if (point_in_rectangle(mouse_x, mouse_y, _personagem.bbox_left - 300, _personagem.bbox_top, _personagem.bbox_left, _personagem.bbox_bottom))
{
	var _comprado = false;
	do
	{
		show_debug_message("Mudar adereço");
		if (global.adereco_alien_equipado)
		{
			global.adereco_droid_equipado = true;
			_comprado = global.adereco_droid_comprado;
			global.adereco_alien_equipado = false;
		}
		else if (global.adereco_droid_equipado)
		{
			global.adereco_fada_equipado = true;
			_comprado = global.adereco_fada_comprado;
			global.adereco_droid_equipado = false;
		}
		else if (global.adereco_fada_equipado)
		{
			global.adereco_halo_equipado = true;
			_comprado = global.adereco_halo_comprado;
			global.adereco_fada_equipado = false;
		}
		else if (global.adereco_halo_equipado)
		{
			global.adereco_slime_equipado = true;
			_comprado = global.adereco_slime_comprado;
			global.adereco_halo_equipado = false;
		}
		else if (global.adereco_slime_equipado)
		{
			global.adereco_alien_equipado = true;
			_comprado = global.adereco_alien_comprado;
			global.adereco_slime_equipado = false;
		}
	} until (_comprado);
	salvar_jogo();
}*/