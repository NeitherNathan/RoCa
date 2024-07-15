event_inherited();
if (global.monetizacao_pronto)
{
	if (!AdMob_Interstitial_IsLoaded())
	{
		AdMob_Interstitial_Load();
	}
}