timer++;
if (timer > 5)
{
	draw_self();
}
if (global.debug)
{
	draw_set_color(c_black);
	draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, true);
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	draw_text(x, y, string(abs(distancia_de_criacao - distancia_de_criacao_create)) 
	+ "\n" 
	+ string(distancia_de_criacao_create)
	+ "\n"
	+ string(distancia_maxima));
}