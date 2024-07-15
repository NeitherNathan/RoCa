draw_set_font(fnt_luckiest_guy_50);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
var _scale = lerp(1, 1.5, timer % 1);
var _half_width = room_width / 2;
var _half_height = room_height / 2;
draw_set_color(c_black);
draw_text_transformed(_half_width + 5, _half_height,     string(int64(timer + 1)), _scale, _scale, 0);
draw_text_transformed(_half_width,     _half_height + 5, string(int64(timer + 1)), _scale, _scale, 0);
draw_text_transformed(_half_width - 5, _half_height,     string(int64(timer + 1)), _scale, _scale, 0);
draw_text_transformed(_half_width,     _half_height - 5, string(int64(timer + 1)), _scale, _scale, 0);
draw_set_color(c_white);
draw_text_transformed(_half_width, _half_height, string(int64(timer + 1)), _scale, _scale, 0);