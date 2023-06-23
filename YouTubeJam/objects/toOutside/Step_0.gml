
var player = oPlayer;

if(global.isWakingUp){
	global.isWakingUp = false;
	{
		with(player)
		{
			skeleton_animation_set("get", false);
		}
	}
}

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
			
			with(player)
			{
				if(skeleton_animation_get() != "hit"){
					skeleton_animation_set("hit",false);
				}
			}
		}
	}
}
var has_interact_input = keyboard_check_pressed(ord("E"));

with(player)
{
	var _int = detect_interactable(x,y,interactRange);

	if(_int != noone)
	{
		if(has_interact_input)
		{
			if(_int.object_index == pItem)
			{
				if(skeleton_animation_get() != "victory"){
					skeleton_animation_set("victory", false);
				}
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
	var itemCount = array_length(global.inventory);
	if(itemCount >= 5)
	{
		room_goto(rWin);
	}
	else
	{
		room_goto(rLifePod);
	}
}
if(global.death_type > 0)
{
	room_goto(rGameOver);	
}
if(global.win_type > 0)
{
	room_goto(rWin);
}