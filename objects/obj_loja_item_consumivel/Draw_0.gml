draw_self();
draw_set_color(c_dkgrey);
draw_set_font(fnt_luckiest_guy_36);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_text(x, bbox_top + 50, tipo_powerup);
draw_set_color(c_black);
draw_set_valign(fa_middle);
var _sprite = noone;
var _value = "";
switch (tipo_powerup)
{
	case "Escudo":
		_sprite = spr_shield;
		_value = string(global.powerup_escudo);
		break;
		
	case "Imã":
		_sprite = spr_magnet;
		_value = string(global.powerup_ima);
		break;
		
	case "Vida Extra":
		_sprite = spr_heart;
		_value = string(global.powerup_vida_extra);
		break;
}
draw_sprite(_sprite, 0, x, bbox_bottom - 250);
draw_text(x + 100, bbox_bottom - 300, _value);
draw_set_font(fnt_luckiest_guy_24);
draw_set_valign(fa_top);
draw_text_ext(x, bbox_top + 125, descricao, -1, sprite_width * 0.75);