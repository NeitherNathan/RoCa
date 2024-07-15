draw_self();
draw_set_color(global.cor_azul);
draw_set_font(fnt_lato_18);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_text_ext(
	x, 
	bbox_top + 50, 
	"Você possui um código de resgate? Digite abaixo para ganhar um prêmio especial!", 
	-1, 
	sprite_width * 0.75);