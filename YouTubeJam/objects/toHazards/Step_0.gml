var player = oPlayer;
if(has_player_detect_lava())
{
	if(!player_is_invincible())
	{
		var pHealth  = player_do_decrement_health();
		if(player_is_dead())
		{
			global.death_type = 1;
		}
		else
		{
			player_do_mark_invincible();
			show_debug_message("Hit lava! new health is " + string(pHealth));
		}
	}
}

var oxygenRemaining = player_do_decrement_oxygen();
if(player_is_suffocated())
{
	global.death_type = 2;
}

if(global.death_type > 0){
	room_goto(rGameOver);	
}