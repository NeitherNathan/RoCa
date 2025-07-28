event_inherited();
if (global.powerup_vida_extra > 0 && room != rm_menu)
{
	global.powerup_vida_extra--;
	

	if (global.morte == true)
	{
		global.pause_alpha =1;
		global.morte = false;
		with (obj_fase_personagem_base)
		{
		invencibilidade = true;
		alarm[0] = 60 * 6; // Tirar invencibilidade
		event_user(6)
		}
		
		if (room == rm_fase_03)
		{
		var _manager = instance_find(obj_fase_controller, 0);
		if (_manager != noone)
		{
		with(_manager){
		event_user(4)
		}}}
		
		
		
		global.morte_alpha = 0.0;
		instance_deactivate_layer("Instances_GameOver");
		instance_deactivate_layer("Assets_GameOver");
		layer_set_visible("Instances_GameOver", false);
		layer_set_visible("Assets_GameOver", false);
	}
	
	//room_goto(rm_contador);
}