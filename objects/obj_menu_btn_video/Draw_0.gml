event_inherited();
draw_set_color(global.cor_azul);
draw_set_font(fnt_luckiest_guy_36);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
var _margem = 50;
var _spacing = 10;
var _x = bbox_left + _margem;
_x += (sprite_get_width(spr_figma_ui_video) / 2);
draw_sprite_ext(spr_figma_ui_video, 0, _x, y, 1, 1, 0, c_white, 1);
_x += (sprite_get_width(spr_figma_ui_video) / 2);
_x += _spacing;
if (global.admob_menu_videos_assistidos % 5 != 0)
{
	_x += 50;
	draw_text(_x, y + 10, string(recompenca));
	_x += string_width(string(recompenca));
	_x += _spacing;
	var _moeda_half_width = sprite_get_width(spr_objeto_moeda) / 2;
	_x += _moeda_half_width;
	draw_sprite_ext(spr_objeto_moeda, 1, _x, y, 0.5, 0.5, 0, c_white, 1);
	_x += _moeda_half_width;
	_x += _spacing;
	draw_text(_x, y + 10, "MOEDAS DISPONÍVEIS");
}
else
{
	var _sprite = sprite_index;
	var _texto = "";
	switch (global.admob_menu_proxima_recompenca)
	{
		case "escudo":
			_sprite = spr_shield;
			_texto = "ESCUDO";
			break;
			
		case "ima":
			_sprite = spr_magnet;
			_texto = "IMA";
			break;
			
		case "vida_extra":
			_sprite = spr_heart;
			_texto = "VIDA EXTRA";
			break;
	}
	_x += 50;
	draw_text(_x, y + 10, "1");
	_x += string_width("1");
	_x += _spacing;
	var _sprite_half_width = sprite_get_width(_sprite) / 2;
	_x += _sprite_half_width;
	draw_sprite_ext(_sprite, 0, _x, y, 0.5, 0.5, 0, c_white, 1);
	_x += _sprite_half_width;
	_x += _spacing;
	draw_text(_x, y + 10, _texto);
}
_x = bbox_right - _margem;
_x -= (sprite_get_width(spr_figma_ui_recorde) / 2);
draw_sprite_ext(spr_figma_ui_recorde, 0, _x, y, 1, 1, 0, c_white, 1);
draw_set_color(c_white);
draw_set_font(fnt_luckiest_guy_24);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(_x, y + 10, "COLETAR");