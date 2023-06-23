if(global.isWakingUp){
	global.isWakingUp = false;
	{
		with(oPlayer)
		{
			skeleton_animation_set("get", false);
		}
	}
}

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
var has_interact_input = keyboard_check_pressed(ord("E"));

with(oPlayer){
	var _int = detect_interactable(x,y,interactRange);

	if(_int != noone)
	{
		if(has_interact_input)
		{
			if(_int.object_index == pItem)
			{
				player_add_inventory(_int);
				instance_destroy(_int);
				with(oScanner)
				{
					generate_scans();
				}
			}
		}
	}
}

var oxygenRemaining = player_do_decrement_oxygen();
if(player_is_suffocated())
{
	global.death_type = 2;
}

if(has_player_detect_door(oPodDoor))
{
	room_goto(rLifePod);
}
if(global.death_type > 0)
{
	room_goto(rGameOver);	
}
if(global.win_type > 0)
{
	room_goto(rWin);
}