function texto_mostrar_mensagem()
{
	if (is_selected)
	{
		draw_set_color(c_black);
		draw_set_font(fnt_arial_35_bold);
		draw_set_halign(fa_center);
		draw_set_valign(fa_bottom);
		draw_text(x, bbox_top - 10, string(mensagem));
	}
}