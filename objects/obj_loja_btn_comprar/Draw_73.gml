if(Ativado = true)
{

event_perform(ev_draw, ev_draw_normal);
draw_set_color(c_white);
draw_set_font(fnt_luckiest_guy_24);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

switch (modo_botao)
{
	case LOJA_BOTAO_MODO.COMPRAR:
		draw_set_halign(fa_left);
		draw_text(bbox_left + 10, y + 6, "COMPRAR");
		draw_sprite_ext(spr_objeto_moeda, 1, bbox_right - 30, y, 0.5, 0.5, 0, c_white, 1);
		draw_set_halign(fa_right);
		draw_text(bbox_right - 50, y + 6, string(consumivel.preco));
		break;
		
	case LOJA_BOTAO_MODO.EQUIPADO:
		draw_text(x, y + 10, "EQUIPADO");
		break;
		
	case LOJA_BOTAO_MODO.EQUIPAR:
		draw_text(x, y + 10, "EQUIPAR");
		break;
}
}
else if (Ativado = false )
{
if (modo_botao !=  LOJA_BOTAO_MODO.COMPRAR)
{
	
event_perform(ev_draw, ev_draw_normal);
draw_set_color(c_white);
draw_set_font(fnt_luckiest_guy_24);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

switch (modo_botao)
{
	case LOJA_BOTAO_MODO.COMPRAR:
		draw_set_halign(fa_left);
		draw_text(bbox_left + 25, y + 10, "COMPRAR");
		draw_sprite_ext(spr_objeto_moeda, 1, bbox_right - 40, y, 0.5, 0.5, 0, c_white, 1);
		draw_set_halign(fa_right);
		draw_text(bbox_right - 80, y + 10, string(consumivel.preco));
		break;
		
	case LOJA_BOTAO_MODO.EQUIPADO:
		draw_text(x, y + 10, "EQUIPADO");
		break;
		
	case LOJA_BOTAO_MODO.EQUIPAR:
		draw_text(x, y + 10, "EQUIPAR");
		break;
}

}
}