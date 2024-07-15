if (room == rm_fim_de_jogo     ||
	room == rm_coletando_dente ||
	room == rm_quiz            ||
	room == rm_pause           ||
	room == rm_contador        ||
	room == rm_efeito_morte)
{
	var _lay_id = layer_create(9999);
	// Feather disable once GM2022
	layer_background_create(_lay_id, print_tela);
}