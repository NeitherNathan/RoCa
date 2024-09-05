
	if (global.morte)
	{
		global.pause = false;
		return;
	}
	
	//event_inherited();
	if (global.pause_alpha == 0.0 && global.pause == false)
	{
		global.pause = true;
		global.pause_alpha = 1.0;
		instance_activate_layer("Instances_Pause");
		instance_activate_layer("Assets_Pause");
		layer_set_visible("Instances_Pause", true);
		layer_set_visible("Assets_Pause", true);
	}
	else
	if (global.pause == true)
	{
		global.pause = false;
		instance_deactivate_layer("Instances_Pause");
		instance_deactivate_layer("Assets_Pause");
		layer_set_visible("Instances_Pause", false);
		layer_set_visible("Assets_Pause", false);
	}