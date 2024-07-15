if(!ds_map_exists(async_load, "type")) exit;
switch(async_load[? "type"])
{
    case "AdMob_OnInitialized":
		global.monetizacao_pronto = true;
        AdMob_RewardedVideo_Load();
		AdMob_Interstitial_Load();
        break;
}