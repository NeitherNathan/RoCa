global.debug = !global.debug;
if (global.debug)
{
	global.skin_selecionada_index = irandom(array_length(global.skins) - 1);
	salvar_jogo();
	room_restart();
}