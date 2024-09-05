function game_is_freezed()
{
	return (global.morte || global.pause_alpha > 0)
}