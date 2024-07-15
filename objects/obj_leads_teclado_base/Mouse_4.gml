var _x_topleft = x - sprite_xoffset;
var _y_topleft = y - sprite_yoffset;
var _x_sprite = mouse_x - _x_topleft;
var _y_sprite = mouse_y - _y_topleft;
var _x_split = sprite_width  / grid_x;
var _y_split = sprite_height / grid_y;
var _x_index = int64(_x_sprite / _x_split);
var _y_index = int64(_y_sprite / _y_split);
var _letra_final = lista_vk[_y_index][_x_index];
if (string_length(string_lettersdigits(chr(_letra_final))) ||
	chr(_letra_final) == "Ç" ||
	chr(_letra_final) == "@" ||
	chr(_letra_final) == ".")
{
	keyboard_string += chr(_letra_final);
}
if (_letra_final == vk_space && string_length(keyboard_string) > 0)
{
	keyboard_string += " ";
}
if (_letra_final == vk_backspace && string_length(keyboard_string) > 0)
{
	keyboard_string = string_delete(keyboard_string, string_length(keyboard_string), 1);
}
if (_letra_final == vk_enter)
{
	with (obj_cadastro_v2_teclado_fundo)
	{
		y_target = room_height + sprite_height;
	}
}
keyboard_lastchar = "";
with (obj_leads_input)
{
	if (is_selected)
	{
		event_user(0); // Atualizar texto
	}
}
//show_debug_message("X: " + string(_x_sprite) + ", Y:" + string(_y_sprite) + " (" + string(_x_index) + ", " + string(_y_index) + ") = " + string(_letra_final));