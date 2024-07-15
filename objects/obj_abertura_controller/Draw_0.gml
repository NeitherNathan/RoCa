draw_self();
if (textura_index >= 0 && textura_index < array_length(textura_lista))
{
	draw_set_color(c_white);
	draw_set_font(fnt_luckiest_guy_36);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_alpha(1);
	draw_text(room_width / 2, room_height / 2, "CARREGANDO " + textura_lista[textura_index, 1]);
}
else if (logo_index < array_length(texto_lista))
{
	draw_set_color(c_white);
	draw_set_font(fnt_luckiest_guy_36);
	draw_set_halign(fa_center);
	draw_set_valign(fa_bottom);
	draw_set_alpha(image_alpha);
	draw_text(x, bbox_top - 10, texto_lista[logo_index]);
	draw_set_alpha(1);
}
draw_set_font(-1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(20, 20, "Runtime " + GM_runtime_version);
draw_text(20, 40, "v " + GM_version);
// Feather disable once GM1024
if (debug_mode)
{
	draw_text(20, 60, date_datetime_string(GM_build_date));
}