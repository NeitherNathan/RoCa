event_inherited();
if (!position_meeting(mouse_x, mouse_y, obj_cadastro_v2_teclado_fundo))
{
	inst_cadastro_v2_controller.pagina_atual = max(inst_cadastro_v2_controller.pagina_atual - 1, 0);
	cadastro_v2_atualizar_input_selecionado();
}