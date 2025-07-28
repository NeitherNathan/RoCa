/// @description Mudar fase

if (!instance_exists(obj_fase_fade))
{
	var _x = global.distancia_ultima_corrida % global.cenario_width;
	_x *= -1;
	_x += global.cenario_width;
	while (_x < room_width + global.cenario_width)
	{
		_x += global.cenario_width;
	}
	instance_create_depth(_x, 0, 400, obj_fase_fade);
}
alarm[0] = tempo_por_fase; // Mudar fase
fase_progresso++;