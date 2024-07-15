if (sprite_index == spr_inimigos_bird_attack)
{
	sprite_index = spr_inimigos_bird_fly;
	instance_create_layer(x, y, layer, obj_inimigo_passaro_projetil);
}