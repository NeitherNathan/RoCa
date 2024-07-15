draw_set_color(c_white);
draw_set_font(fnt_luckiest_guy_24);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
switch (room)
{
	case rm_fim_de_jogo:
		draw_text(x, y + 10, "JOGAR NOVAMENTE");
		break;
		
	case rm_pause:
		draw_text(x, y + 10, "CONTINUAR");
		break;
}
draw_sprite(spr_figma_btn_continuar, 0, bbox_right - 30, y);