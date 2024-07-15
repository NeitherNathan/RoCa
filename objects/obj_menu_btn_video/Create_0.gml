event_inherited();
recompenca = 20;
if (global.monetizacao_pronto)
{
	if (AdMob_RewardedVideo_IsLoaded())
	{
		event_user(1); // Loaded
	}
}
event_user(2); // Recompenca especial

show_debug_message("ADMOB");
show_debug_message(string(global.admob_menu_videos_assistidos % 5));