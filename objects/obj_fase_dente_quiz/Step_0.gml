if (room == rm_fase)
{
	x = xstart - (global.distancia_ultima_corrida - distancia_de_criacao);
	if (criar_novo_objeto && point_in_rectangle(x, y, 0, 0, room_width, room_height))
	{
		with (object_index)
		{
			criar_novo_objeto = false;
		}
		with (obj_fase_controller)
		{
			event_user(other.objeto_index); // Criar novo objeto
		}
	}
}