distancia_de_criacao -= (velocidade * direcao);
if (abs(distancia_de_criacao - distancia_de_criacao_create) > distancia_maxima)
{
	distancia_de_criacao += (velocidade * direcao);
	direcao *= -1;
	image_xscale = direcao;
}
if (instance_exists(obj_fase_fade))
{
	var _fase_fade = instance_find(obj_fase_fade, 0);
	if (x > _fase_fade.x)
	{
		instance_destroy();
	}
}
if (global.debug && x < room_width && x > 0)
{
	//global.controller.velocidade = 5;
}