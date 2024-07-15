if (!acompanhar_fundo)
{
	var _personagem = instance_find(obj_fase_personagem_base, 0);
	var _direcao = point_direction(x, y, _personagem.x, _personagem.y);
	x += lengthdir_x(20, _direcao);
	y += lengthdir_y(20, _direcao);
}