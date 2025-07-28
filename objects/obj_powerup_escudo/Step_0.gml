var _personagem = instance_find(obj_fase_personagem_base, 0);
if (_personagem != noone)
{
	
	if (global.powerup_escudo <= 0)
	{
	image_alpha = 0.5
	}
	else {
	image_alpha = _personagem.ima ? 0.5 : 1;
	}
}