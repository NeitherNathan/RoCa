event_inherited();
var _comprado = false;
var _equipado = false;
switch (tipo_adereco)
{
	case "Alien":
		_comprado = global.adereco_alien_comprado;
		_equipado = global.adereco_alien_equipado;
		break;
	
	case "Droid":
		_comprado = global.adereco_droid_comprado;
		_equipado = global.adereco_droid_equipado;
		break;
		
	case "Fada":
		_comprado = global.adereco_fada_comprado;
		_equipado = global.adereco_fada_equipado;
		break;
		
	case "Halo":
		_comprado = global.adereco_halo_comprado;
		_equipado = global.adereco_halo_equipado;
		break;
		
	case "Slime":
		_comprado = global.adereco_slime_comprado;
		_equipado = global.adereco_slime_equipado;
}
if (_comprado)
{
	botao.modo_botao = _equipado ? LOJA_BOTAO_MODO.EQUIPADO : LOJA_BOTAO_MODO.EQUIPAR;
}