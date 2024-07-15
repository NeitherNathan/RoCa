draw_self();
draw_set_color(global.cor_azul);
draw_set_font(fnt_luckiest_guy_36);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
switch (estatistica)
{
	case "Distancia":
		draw_text(x, y + 10, string(round(global.distancia_ultima_corrida / 1000)) + " m");
		draw_text(x, bbox_top - (sprite_height / 3), "DISTÂNCIA PERCORRIDA");
		break;
		
	case "Moedas":
		draw_text(x, y + 10, string(global.moedas_coletadas_ultima_corrida));
		draw_text(x, bbox_top - (sprite_height / 3), "MOEDAS COLETADAS");
		break;
}