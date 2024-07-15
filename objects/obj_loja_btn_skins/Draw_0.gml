event_inherited();
draw_set_color(selecionado ? global.cor_azul : merge_color(c_blue, global.cor_azul, 0.9));
draw_set_font(fnt_luckiest_guy_36);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_transformed(x + 50, y + 10, "SKINS", image_xscale, image_yscale, 0);