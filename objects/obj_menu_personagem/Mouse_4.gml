do
{
	global.skin_selecionada_index++;
	if (global.skin_selecionada_index >= array_length(global.skins))
	{
		global.skin_selecionada_index -= array_length(global.skins);
	}
} until (global.skin_desbloqueada[global.skin_selecionada_index]);
salvar_jogo();
event_user(0); // Atualizar personagem selecionado