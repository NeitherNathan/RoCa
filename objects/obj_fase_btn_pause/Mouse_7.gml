event_inherited();
switch (room)
{
	case rm_fase:
	case rm_fase_03:
		room_persistent = true;
		room_goto(rm_pause);
		break;
		
	case rm_pause:
		room_goto(rm_contador);
		break;
}