event_inherited();
var _comprado = false;
var _equipado = false;

switch (tipo_adereco)
{
	case "Alien":
		_comprado = global.adereco_alien_comprado;
		_equipado = global.adereco_alien_equipado;
		Nome_adereco = "JUPTERINO";
		break;
	
	case "Droid":
		_comprado = global.adereco_droid_comprado;
		_equipado = global.adereco_droid_equipado;
		Nome_adereco = "C3PO.V2";
		break;
		
	case "Fada":
		_comprado = global.adereco_fada_comprado;
		_equipado = global.adereco_fada_equipado;
		Nome_adereco = "HEY LISTEN";
		break;
		
	case "Halo":
		_comprado = global.adereco_halo_comprado;
		_equipado = global.adereco_halo_equipado;
		Nome_adereco = "RENASCIDO";
		break;
		
	case "Slime":
		_comprado = global.adereco_slime_comprado;
		_equipado = global.adereco_slime_equipado;
		Nome_adereco = "LIMO VIVO";
}
if (_comprado)
{
	botao.modo_botao = _equipado ? LOJA_BOTAO_MODO.EQUIPADO : LOJA_BOTAO_MODO.EQUIPAR;
}