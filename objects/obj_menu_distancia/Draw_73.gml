draw_self();
draw_set_color(global.cor_azul);
draw_set_font(fnt_luckiest_guy_36);
draw_set_valign(fa_middle);
switch (room)
{
	case rm_menu:
		draw_set_halign(fa_left);
		draw_text(bbox_left + 50, y + 10, string(round(global.pontuacao_recorde / 1000)) + " m");
		draw_sprite_ext(spr_figma_ui_recorde, 0, room_width - 150, bbox_top, 1, 1, 0, c_white, 1);
		draw_set_color(c_white);
		draw_set_font(fnt_luckiest_guy_24);
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_text(room_width - 150, bbox_top + 10, "RECORDE");
		break;
		
	case rm_fase:
	case rm_fase_03:
		draw_set_halign(fa_left);
		var _texto = string(round(global.distancia_ultima_corrida / 1000)) + " m";
		draw_text(25, y + 10, _texto);
		x = (50 + string_width(_texto) + sprite_width);
		break;
}