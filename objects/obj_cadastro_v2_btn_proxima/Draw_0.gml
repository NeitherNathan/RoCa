event_inherited();
draw_set_color(c_white);
draw_set_font(fnt_luckiest_guy_36);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
if (inst_cadastro_v2_controller.pagina_atual < global.cadastro_paginas)
{
	draw_text(x, y + 10, "PRÓXIMA");
}
else
{
	draw_text(x, y + 10, "ENVIAR");
}
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_bottom);
draw_text_ext(bbox_right + 50, bbox_bottom, mensagem, -1, room_width - (bbox_right + 100));