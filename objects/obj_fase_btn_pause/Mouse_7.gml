
	if (global.morte)
	{
		global.pause = false;
		return;
	}
	
	//event_inherited();
	if (global.pause_alpha == 0.0 && global.pause == false)
	{
		var _personagem = instance_find(obj_fase_personagem_base, 0);
		if (_personagem != noone)
		{
		with(_personagem){
		event_user(7)
		}

		//event_perform_object(_personagem, ev_other, ev_user7)
		}
		
					if (room == rm_fase_03)
	{
		var _manager = instance_find(obj_fase_controller, 0);
		if (_manager != noone)
		{
		with(_manager){
		event_user(3)
		}
	}}
		
		
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
		var _personagem = instance_find(obj_fase_personagem_base, 0);
		if (_personagem != noone)
		{
		with(_personagem){
		event_user(6)
		}
		}
		//event_perform_object(_personagem, ev_other, ev_user6)
	
					if (room == rm_fase_03)
	{
		var _manager = instance_find(obj_fase_controller, 0);
		if (_manager != noone)
		{
		with(_manager){
		event_user(4)
		}
		
		}
	
	}
		global.pause = false;
		instance_deactivate_layer("Instances_Pause");
		instance_deactivate_layer("Assets_Pause");
		layer_set_visible("Instances_Pause", false);
		layer_set_visible("Assets_Pause", false);
	}