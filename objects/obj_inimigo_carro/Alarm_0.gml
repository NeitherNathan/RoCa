/// @description in sequence

if (in_sequence)
{
	if (x > room_width * 1.5)
	{
		instance_create_layer(x, y, "Instances", obj_inimigo_carro);
	}
	instance_destroy(id);
}
else
{
	visible = true;
}