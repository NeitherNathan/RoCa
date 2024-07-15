/// @desc Function Description
/// @param {string} _layer_nome Description
function loja_aba(_layer_nome)
{
	var _lista_layer_nome = 
	[
		"Instances_Skins",
		"Instances_Aderecos",
		"Instances_Consumiveis"
	];
	var _lista_inst = 
	[
		inst_loja_btn_skins,
		inst_loja_btn_aderecos,
		inst_loja_btn_consumiveis
	]
	for (var _i = 0; _i < array_length(_lista_layer_nome); _i++)
	{
		layer_set_visible(layer_get_id(_lista_layer_nome[_i]), _lista_layer_nome[_i] == _layer_nome);
		_lista_inst[_i].selecionado = _lista_layer_nome[_i] == _layer_nome;
		_lista_inst[_i].image_blend = _lista_layer_nome[_i] == _layer_nome ? c_white : c_ltgray;
		if (_lista_layer_nome[_i] == _layer_nome)
		{
			global.loja_aba_aberta = _i;
		}
		_lista_inst[_i].image_xscale = _lista_layer_nome[_i] == _layer_nome ? 1 : 0.75;
		_lista_inst[_i].image_yscale = _lista_layer_nome[_i] == _layer_nome ? 1 : 0.75;
	}
}