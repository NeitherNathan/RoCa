if (game_is_freezed())
	return;

slime_y = lerp(slime_y, bbox_bottom, 0.1);
if (ima)
{
	var _moeda = collision_circle(x, y, ima_alcance, obj_fase_moeda, true, true);
	if (_moeda != noone)
	{
		if (_moeda.in_sequence and _moeda.naopegar<=0)
		{
		
			var _nova_moeda = instance_create_layer(_moeda.x, _moeda.y, "Instances", _moeda.object_index);
			_nova_moeda.acompanhar_fundo = false;
			_nova_moeda.invincible = true;
			instance_destroy(_moeda.id);
		}
	}
}
if (!invencibilidade)
{
	image_alpha = 1;
}
else
{
	image_alpha = lerp(0.25, 0.9, abs(sin(get_timer() / 100000)));
}