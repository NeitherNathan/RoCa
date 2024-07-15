draw_self();
draw_rectangle(bbox_left,     bbox_top,     bbox_right,     bbox_bottom,     true);
draw_rectangle(bbox_left - 1, bbox_top - 1, bbox_right + 1, bbox_bottom + 1, true);
draw_set_font(fnt_lato_18);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
if (!surface_exists(surface_surface))
{
    surface_surface = surface_create(surface_width - (surface_padding * 2), surface_height - (surface_padding * 2));
}
surface_set_target(surface_surface);
draw_clear_alpha(c_black, 0);
draw_text_ext(0, texto_y, texto, -1, surface_width - (surface_padding * 2));
surface_reset_target();
draw_surface(surface_surface, x + surface_padding, y + surface_padding);
if (texto_height == 0)
{
	texto_height = string_height_ext(texto, -1, surface_width - (surface_padding * 2));
}
//draw_text(x, y, string(texto_y));