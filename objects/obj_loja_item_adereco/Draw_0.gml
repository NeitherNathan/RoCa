draw_self();
draw_set_color(c_dkgrey);
draw_set_font(fnt_luckiest_guy_36);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_text(x, bbox_top + 50, tipo_adereco);
var _sprite = noone;
var _image_index = (get_timer() / 1000000) * 24;
switch (tipo_adereco)
{
	case "Alien": _sprite = spr_enemy_alien           ; break;
	case "Droid": _sprite = spr_aderecos_droid        ; break;
	case "Fada" : _sprite = spr_aderecos_fada         ; break;
	case "Halo" : _sprite = spr_aderecos_halo_animacao; break;
	case "Slime": _sprite = spr_aderecos_slime        ; break;
}
draw_sprite(_sprite, _image_index, x, y);