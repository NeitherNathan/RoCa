if (!ds_map_exists(async_load, "type"))
{
	exit;
}
show_debug_message(string(async_load[? "type"]));
switch(async_load[? "type"])
{
	case "AdMob_RewardedVideo_OnLoaded":
		event_user(1); // Loaded
		visible = true;
		break;
	
    case "AdMob_RewardedVideo_OnReward":
		event_user(0); // Reward
		AdMob_RewardedVideo_Load();
		visible = false;
        break;
}