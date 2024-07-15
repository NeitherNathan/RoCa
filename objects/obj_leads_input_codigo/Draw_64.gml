event_inherited();
if (validador != 0 && validador != noone)
{
	draw_set_color(c_red);
	var _texto_feedback = "";
	switch (validador)
	{
		case -1: _texto_feedback = "INVÁLIDO"; break;
		case  1: _texto_feedback = "JÁ USADO"; break;
	}
	draw_text(bbox_left, bbox_bottom + (sprite_height / 2), _texto_feedback);
}