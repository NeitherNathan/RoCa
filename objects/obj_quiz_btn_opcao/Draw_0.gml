draw_self();
draw_set_color(texto_cor);
draw_set_font(fnt_luckiest_guy_24);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_ext(x, y + 10, global.quiz[global.controller.quiz_index].respostas[resposta_index], -1, sprite_width * 0.9);