/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if (!place_meeting(x,y,obj_fase_personagem_base))
{
	cannot_be_catch -= 1
	if (cannot_be_catch == 1 and x < obj_fase_personagem_base.x)
	{
		image_alpha = 0.0
		instance_destroy()
	}
}