/*if (sprite_index == spr_inimigo_passaro_voar)
{
	y = clamp(y_alvo, y - velocidade, y + velocidade);
}
if (abs(y - y_alvo) < velocidade)
{
	sprite_index = spr_inimigo_passaro_atacar;
	do
	{
		y_alvo = irandom_range(sprite_height / 2, room_height - (sprite_height / 2));
	} until (abs(y_alvo - y) > room_height / 3);
}*/

_contadorTiro = _contadorTiro + 1;


if (_contadorTiro >= 120)
{
	show_debug_message(_contadorTiro);
_contadorTiro =0;
instance_create_layer(x, y, layer, obj_inimigo_passaro_projetil);
sprite_index = spr_inimigos_bird_attack;
image_index = 0;

}