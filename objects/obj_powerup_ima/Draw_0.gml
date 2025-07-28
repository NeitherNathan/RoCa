draw_sprite(spr_power_up_background, 0, x, y);
event_inherited();
draw_set_color(c_white);
draw_set_font(fnt_luckiest_guy_36);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
var _personagem = instance_find(obj_fase_personagem_base, 0);
if (_personagem != noone)
{
	if (_personagem.escudo ||  global.powerup_ima <= 0)
	{
		draw_set_color(c_white);
	}
	else
	{
		draw_set_color(c_black);
	}
	var _outline = 3;
	draw_text(bbox_right + _outline, bbox_top           , string(global.powerup_ima));
	draw_text(bbox_right - _outline, bbox_top           , string(global.powerup_ima));
	draw_text(bbox_right           , bbox_top + _outline, string(global.powerup_ima));
	draw_text(bbox_right           , bbox_top - _outline, string(global.powerup_ima));
	if (_personagem.escudo ||  global.powerup_ima <= 0)
	{
		draw_set_color(c_grey);
	}
	else
	{
		draw_set_color(c_white);
	}
}
draw_text(bbox_right, bbox_top, string(global.powerup_ima));