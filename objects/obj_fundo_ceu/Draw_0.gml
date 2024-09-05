draw_self();

var w = sprite_get_width(spr_fase_03_ceu);
var posicao_x = ((scrollh*0.5)%(w*2))-(w*0.5);
repeat(4){
draw_sprite(spr_fase_03_ceu,0,x + posicao_x,y);
posicao_x += w;
}

var w = sprite_get_width(spr_fase_03_fundo);
var posicao_x = ((scrollh*1)%(w*2))-(w*0.5);
repeat(4){
draw_sprite(spr_fase_03_fundo,0,x + posicao_x,y);
posicao_x += w;
}
