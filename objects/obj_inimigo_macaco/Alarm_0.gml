/// @description in sequence

if (in_sequence)
{
	if (x > room_width)
	{
		instance_create_layer(x, y, "Instances", obj_inimigo_macaco);
	}
	instance_destroy(id);
}
else
{
	visible = true;
}