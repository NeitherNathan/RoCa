image_index = global.quiz_habilitado ? 1 : 0;
draw_sprite_ext(sprite_index, image_index, x, y, scale, scale, image_angle, global.quiz_habilitado ? c_green : c_red, image_alpha);
/*draw_set_color(global.cor_azul);
draw_set_font(fnt_luckiest_guy_36);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x, y + 10, "QUIZ");*/