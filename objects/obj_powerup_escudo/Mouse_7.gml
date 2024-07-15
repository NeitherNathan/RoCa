event_inherited();
var _personagem = instance_find(obj_fase_personagem_base, 0);
if (_personagem != noone)
{
	if (!_personagem.escudo && !_personagem.ima && global.powerup_escudo > 0 && room != rm_menu)
	{
		_personagem.escudo = true;
		global.powerup_escudo--;
		_personagem.alarm[2] = 60 * _personagem.escudo_duracao; // Tirar escudo
	}
}