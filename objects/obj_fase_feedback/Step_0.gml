for (var _i = 0; _i < instance_number(object_index); _i++)
{
	var _feedback = instance_find(object_index, _i);
	if (_feedback.id != id && abs(_feedback.x - x) < 100 && _feedback.y > y)
	{
		instance_destroy();
	}
}