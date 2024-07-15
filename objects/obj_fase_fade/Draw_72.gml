//draw_set_color(c_white);
//draw_rectangle(x - global.cenario_width, 0, x + (global.cenario_width * 2), 1080, false);
var _fundo = instance_find(obj_fundo_controller, 0);
//draw_sprite_tiled(_fundo.sprites_cenario[global.controller.fase_index].ceu, 0, global.distancia_ultima_corrida * _fundo.parallax_ceu * -1, 0);
draw_sprite(sprite_ceu, 0, x, y);
draw_sprite(sprite_fundo, 0, x, y);
draw_self();
//draw_sprite_part(_fundo.sprites_cenario[atual_fase_index].ceu,     0, 0, 0, global.cenario_width, 1080, x - global.cenario_width, y);
draw_sprite_part(_fundo.sprites_cenario[atual_fase_index].fundo,   0, 0, 0, global.cenario_width, 1080, x - global.cenario_width, y);
draw_sprite_part(_fundo.sprites_cenario[atual_fase_index].chao,    0, 0, 0, global.cenario_width, 1080, x - global.cenario_width, y);
//draw_sprite_part(_fundo.sprites_cenario[proxima_fase_index].ceu,   0, 0, 0, global.cenario_width, 1080, x + global.cenario_width, y);
draw_sprite_part(_fundo.sprites_cenario[proxima_fase_index].fundo, 0, 0, 0, global.cenario_width, 1080, x + global.cenario_width, y);
draw_sprite_part(_fundo.sprites_cenario[proxima_fase_index].chao,  0, 0, 0, global.cenario_width, 1080, x + global.cenario_width, y);
/*draw_set_color(c_black);
draw_set_font(-1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(100, 10, string((global.distancia_ultima_corrida - (xstart - x)) / global.cenario_width));*/