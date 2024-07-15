if (texto != "")
{
	draw_set_font(fonte);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text_color(x, y, texto, image_blend, image_blend, image_blend, image_blend, image_alpha);
}