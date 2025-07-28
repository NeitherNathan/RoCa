draw_set_color(c_white);
draw_set_font(fnt_luckiest_guy_36);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);


if(_gotolevel == true){
draw_text(x, y + 10, "JOGAR AGORA");
}
else{
draw_text(x, y + 10, "OK");
}
