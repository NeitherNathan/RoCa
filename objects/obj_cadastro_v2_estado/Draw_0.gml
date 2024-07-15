image_blend = clicado ? c_black : c_white;
draw_self();
draw_set_color(c_white);
draw_set_font(fnt_luckiest_guy_36);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x, y + 10, sigla);
if (clicado)
{
	draw_set_color(global.cor_azul);
	var _x = inst_cadastro_v2_controller.x + (pagina * room_width);
	draw_text(_x, room_height - 300, nome);
}