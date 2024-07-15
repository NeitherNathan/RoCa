event_inherited();
if (mouse_check_button(mb_left) || keyboard_check(vk_space) || keyboard_check(vk_up))
{
	velocidade -= aceleracao;
	//y = max(y - velocidade, sprite_height / 2);
}
else
{
	velocidade += aceleracao;
	//y = min(y + velocidade, room_height - (sprite_height / 2));
}
velocidade = clamp(velocidade, -10, 10);
y += velocidade;
var _half_height = sprite_height / 2;
if (y < _half_height)
{
	y = _half_height;
	velocidade = 0;
}
if (y > room_height - _half_height)
{
	y = room_height - _half_height;
	velocidade = 0;
}
//y = clamp(y + velocidade, sprite_height / 2, room_height - (sprite_height / 2));