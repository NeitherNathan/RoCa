sprite_index = is_on ? spr_figma_toggle_set : spr_figma_toggle;
event_inherited();
draw_set_color(global.cor_azul);
draw_set_font(fnt_luckiest_guy_24);
draw_set_halign(fa_left);
draw_set_valign(fa_middle)
draw_text(bbox_right + 20, y + 10, "ACEITAR TERMO");