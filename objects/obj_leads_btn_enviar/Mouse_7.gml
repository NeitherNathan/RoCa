event_inherited();
if (image_alpha == 1)
{
	clicado = true;
	if (!instance_exists(obj_fade))
	{
		enviar_leads();
		criar_fade(rm_escolha_avatar, 0.5);
	}
}
else
{
	clicado = false;
}