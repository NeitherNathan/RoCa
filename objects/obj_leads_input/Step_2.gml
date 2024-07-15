if (room == rm_cadastro_02)
{
	x = lerp(x, xstart + ((cadastro_pagina - inst_cadastro_v2_controller.pagina_atual) * room_width), 0.1);
}
if (room == rm_gift_code)
{
	x = lerp(x, xstart + ((cadastro_pagina - inst_gift_code_controller.pagina_atual) * room_width), 0.1);
}