if (game_is_freezed())
	return;

event_inherited();
velocidade_y += gravidade;
y += velocidade_y;
y = max(y, sprite_height / 2);
if (y > ystart)
{
	y = ystart;
	velocidade_y = 0;
	pulos = 2;
	sprite_index = global.skins[global.skin_selecionada_index].correr;
	image_speed = global.controller.velocidade / 10;
}
if (global.debug && velocidade_y >= 0)
{
	var _objeto_lado = instance_place(x + (global.controller.velocidade * 10), y, obj_fase_objeto_base);
	var _objeto_baixo = instance_place(x, y + (abs(velocidade_y) * 10), obj_fase_objeto_base);
	if (_objeto_lado != noone)
	{
		if (_objeto_lado.object_index != obj_fase_moeda &&
			_objeto_lado.object_index != obj_fase_coletavel_base)
		{
			event_perform(ev_keypress, vk_up);
			exit;
		}
	}
	if (_objeto_baixo != noone)
	{
		if (_objeto_baixo.object_index != obj_fase_moeda &&
			_objeto_baixo.object_index != obj_fase_coletavel_base)
		{
			event_perform(ev_keypress, vk_up);
			exit;
		}
	}
	if (!invencibilidade && !escudo && !ima)
	{
		if (global.powerup_escudo > global.powerup_ima)
		{
			with (obj_powerup_escudo)
			{
				event_perform(ev_mouse, ev_left_release);
			}
		}
		else
		{
			with (obj_powerup_ima)
			{
				event_perform(ev_mouse, ev_left_release);
			}
		}
	}
}