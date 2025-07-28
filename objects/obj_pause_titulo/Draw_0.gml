draw_self();
draw_set_color(global.cor_azul);
draw_set_font(fnt_luckiest_guy_36);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
switch (TypeType)
{
	case 0:
		draw_text(x, y + 10, "FIM DE JOGO");
		break;
		
	case 1:
		draw_text(x, y + 10, "JOGO PAUSADO");
		break;
}