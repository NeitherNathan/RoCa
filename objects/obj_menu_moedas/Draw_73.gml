draw_self();
draw_set_color(global.cor_azul);
draw_set_font(fnt_luckiest_guy_36);
draw_set_valign(fa_middle);
switch (room)
{
	case rm_menu:
	case rm_loja:
		draw_set_halign(fa_left);
		draw_text(bbox_left + 50, y + 10, string(global.moedas_coletadas));
		draw_sprite(spr_objeto_moeda, current_time / 100, room_width - 50, y - 10);
		break;
		
	case rm_fase:
	case rm_fase_03:
		draw_set_halign(fa_left);
		var _texto = string(global.moedas_coletadas_ultima_corrida);
		draw_text(25, y + 10, _texto);
		draw_sprite(spr_objeto_moeda, current_time / 100, 100 + string_width(_texto), y - 10);
		x = (200 + string_width(_texto)) + sprite_width;
		break;
}