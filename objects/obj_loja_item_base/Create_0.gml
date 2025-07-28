if(CriarBotao == true){
botao = instance_create_layer(x, bbox_bottom - 100, layer, obj_loja_btn_comprar);
}
else
{
botao = instance_create_layer(x, bbox_bottom - 100, layer, obj_loja_btn_Halo);
}
botao.consumivel = id;
