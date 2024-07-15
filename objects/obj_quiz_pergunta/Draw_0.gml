draw_self();
draw_set_color(c_white);
draw_set_font(fnt_luckiest_guy_24);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text_ext(bbox_left + 25, bbox_top + 25, global.quiz[global.controller.quiz_index].pergunta, -1, sprite_width - 50);