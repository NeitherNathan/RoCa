event_inherited();
if (global.pause == false && global.morte == false){
velocidade_y += gravidade;

y += velocidade_y;
if (y > y_max)
{
	y = y_max;
}
}