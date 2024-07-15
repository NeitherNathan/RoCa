draw_self();
if (draw_char != "")
{
	draw_set_color(color_char);
	draw_set_font(fnt_luckiest_guy_36);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(x, y + 10, draw_char);
}
if (custom_symbol != noone)
{
	draw_sprite(custom_symbol, 0, x, y);
}