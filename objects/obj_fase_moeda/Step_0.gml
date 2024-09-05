if ((!acompanhar_fundo) && game_is_freezed() == false)
{
	var _personagem = instance_find(obj_fase_personagem_base, 0);
	var _direcao = point_direction(x, y, _personagem.x, _personagem.y);
	x += lengthdir_x(20, _direcao);
	y += lengthdir_y(20, _direcao);
}

naopegar -= 1;
//if (!place_meeting(x,y,obj_fase_personagem_base))
//{
//	cannot_be_catch -= 1
//	if (cannot_be_catch == 1 and x < obj_fase_personagem_base.x)
//	{
//		image_alpha = 0.0
//		instance_destroy()
//	}
//}