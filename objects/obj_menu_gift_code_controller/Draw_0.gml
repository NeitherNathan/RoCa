draw_set_color(global.cor_azul);
draw_set_font(fnt_luckiest_guy_36);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if (_spritenumber == 0){
draw_text(x, 125, "VOCÊ DESBLOQUEOU UMA FASE BÔNUS!");
draw_set_font(fnt_luckiest_guy_24);
draw_text(x, 225, "Fases bônus podem ser jogadas três vezes por dia a cada código em um tempo máximo de 3 minutos por vez.");
draw_sprite(spr_figma_gift_code_fase_bonus, 0, x, room_height / 2);
}
else if(_spritenumber == 1){
draw_text(x, 125, "VOCÊ DESBLOQUEOU UMA RECOMPENSA!");
draw_set_font(fnt_luckiest_guy_24);
draw_text(x, 225, "3 Powerups Imã e 3 Powerups Escudo!");
draw_sprite(Reco1, 0, x, room_height / 2);
}
else if(_spritenumber == 2){
draw_text(x, 125, "VOCÊ DESBLOQUEOU UMA RECOMPENSA!");
draw_set_font(fnt_luckiest_guy_24);
draw_text(x, 225, "150 Moedas!");
draw_sprite(Reco2, 0, x, room_height / 2);
}
else if(_spritenumber == 3){
draw_text(x, 125, "VOCÊ DESBLOQUEOU UMA RECOMPENSA!");
draw_set_font(fnt_luckiest_guy_24);
draw_text(x, 225, "3 Vidas Extras!");
draw_sprite(Reco3, 0, x, room_height / 2);
}
else if(_spritenumber == 4){
draw_text(x, 125, "VOCÊ DESBLOQUEOU UMA RECOMPENSA!");
draw_set_font(fnt_luckiest_guy_24);
draw_text(x, 225, "1 Imã, 1 Escudo e 1 Vida!");
draw_sprite(reco6, 0, x, room_height / 2);
}
else if(_spritenumber == 5){
draw_text(x, 125, "VOCÊ DESBLOQUEOU UMA RECOMPENSA!");
draw_set_font(fnt_luckiest_guy_24);
draw_text(x, 225, "O Adereço 'Renascido'!");
draw_sprite(Reco5, 0, x, room_height / 2);
}