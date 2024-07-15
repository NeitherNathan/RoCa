event_inherited();
with (obj_loja_item_skin)
{
	x_offset = clamp(x_offset + other.spacing * other.image_xscale, other.spacing * 8, 0);
}
var _skin = instance_find(obj_loja_item_skin, 0);
global.loja_skin_x_offset = _skin.x_offset;