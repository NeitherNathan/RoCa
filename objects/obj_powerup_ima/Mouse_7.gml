event_inherited();
var _personagem = instance_find(obj_fase_personagem_base, 0);
if (_personagem != noone)
{
	if (global.powerup_ima > 0 && !_personagem.ima && !_personagem.escudo && room != rm_menu)
	{
		global.powerup_ima--;
		_personagem.ima = true;
		_personagem.alarm[1] = 60 * _personagem.ima_duracao; // Tirar ima
	}
}