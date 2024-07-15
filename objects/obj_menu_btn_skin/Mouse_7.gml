event_inherited();
do
{
	global.skin_selecionada_index += index_direcao;
	if (global.skin_selecionada_index >= array_length(global.skins))
	{
		global.skin_selecionada_index -= array_length(global.skins);
	}
	else if (global.skin_selecionada_index < 0)
	{
		global.skin_selecionada_index += array_length(global.skins);
	}
} until (global.skin_desbloqueada[global.skin_selecionada_index]);
with (obj_menu_personagem)
{
	event_user(0); // Atualizar personagem selecionado
}