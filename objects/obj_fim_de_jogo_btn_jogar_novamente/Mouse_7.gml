event_inherited();
if (room == rm_fim_de_jogo)
{
	global.fase_reiniciar = true;
	room_goto(global.fase_room_atual);
}
else
{
	room_goto(rm_contador);
}