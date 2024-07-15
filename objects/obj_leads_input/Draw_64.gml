draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(fnt_consolas_50);
var _texto_final = texto_input;
while (string_width(_texto_final) > sprite_width - 25)
{
	_texto_final = string_copy(_texto_final, 2, string_length(_texto_final) - 1);
}
if (is_selected && int64(current_time / 500) % 2 == 0)
{
	_texto_final += "|";
}
draw_text(bbox_left + 10, (bbox_top + bbox_bottom) / 2, _texto_final);