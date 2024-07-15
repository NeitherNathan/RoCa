event_inherited();
if (global.powerup_vida_extra > 0 && room != rm_menu)
{
	global.powerup_vida_extra--;
	room_goto(rm_contador);
}