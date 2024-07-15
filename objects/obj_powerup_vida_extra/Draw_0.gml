draw_sprite(spr_power_up_background, 0, x, y);
event_inherited();
draw_set_color(room != rm_menu ? c_black : c_white);
draw_set_font(fnt_luckiest_guy_36);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(bbox_right, bbox_top, string(global.powerup_vida_extra));