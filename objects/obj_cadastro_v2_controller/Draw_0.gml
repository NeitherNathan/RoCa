var _x_estado = x + (pagina_estado * room_width);
var _x_termo = x + (pagina_termo * room_width);
draw_set_color(global.cor_azul);
draw_set_font(fnt_luckiest_guy_36);
draw_set_halign(fa_center);
draw_set_valign(fa_middle)
draw_text(_x_estado, 200, "ESTADO");
draw_text(_x_termo, 200, "TERMO");