draw_set_color(global.cor_azul);
draw_set_font(fnt_luckiest_guy_36);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x, 125, "VOCÊ DESBLOQUEOU UMA FASE BONUS!");
draw_set_font(fnt_luckiest_guy_24);
draw_text(x, 225, "Fases bonus podem ser jogadas uma vez por código");
draw_sprite(spr_figma_gift_code_fase_bonus, 0, x, room_height / 2);