draw_set_color(c_white);
draw_set_font(fnt_luckiest_guy_24);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
switch (ButtonType)
{
	case 0:
		draw_text(x, y + 10, "JOGAR NOVAMENTE");
		break;
		
	case 1:
		draw_text(x, y + 10, "CONTINUAR");
		break;
		
}
draw_sprite(spr_figma_btn_continuar, 0, bbox_right - 30, y);