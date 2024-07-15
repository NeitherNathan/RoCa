event_inherited();
if (global.monetizacao_pronto)
{
	if (AdMob_RewardedVideo_IsLoaded())
	{
		visible = true;
	}
	else
	{
		AdMob_RewardedVideo_Load();
		visible = false;
	}
}
else
{
	visible = false;
}