if (!ds_map_exists(async_load, "type"))
{
	exit;
}
show_debug_message(string(async_load[? "type"]));
switch(async_load[? "type"])
{
	case "AdMob_Interstitial_OnLoaded":
		event_user(1); // Loaded
		visible = true;
		break;
	
    case "AdMob_Interstitial_OnFullyShown":
	case "AdMob_Interstitial_OnDismissed":
		event_user(0); // Reward
		AdMob_Interstitial_Load();
		//visible = false;
        break;
}