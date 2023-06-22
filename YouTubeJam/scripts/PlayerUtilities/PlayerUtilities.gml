// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function detect_interactable(_x,_y,_range,_enable = true){
	var _nearest = instance_nearest(_x,_y,pInteractable);
	if(_nearest != noone)
	{
		if(point_distance(_x,_y,_nearest.x,_nearest.y) <= _range)
		{
			if(_enable)
			{
				_nearest.inrange = true;
			}
			return _nearest;
		}
		else
		{
			return noone;
		}
	}
}

function player_add_inventory(item){
	array_push(oPlayer.inventory, item.name);
}

function player_is_invincible(){
	return oPlayer.invincibilityFrames > 0;
}

function player_is_dead(){
	return oPlayer.myHealth <= 0;
}

function player_do_mark_invincible(){
	oPlayer.invincibilityFrames = 90;
}

function player_do_decrement_health(){
	oPlayer.myHealth = oPlayer.myHealth - 1;
	return oPlayer.myHealth;
}

function has_player_detect_lava(){
	for (var i = 0; i < instance_number(oLava); ++i;)
	{
	    var lava = instance_find(oLava, i);
		if(lava != noone){	
			with(lava){
				var player = instance_place(x, y, oPlayer);
				if player != noone {
					return true;
				}
			}	
		}
	}
	return false;
}

function has_player_detect_door(){
	for (var i = 0; i < instance_number(oDoor); ++i;)
	{
	    var door = instance_find(oDoor, i);
		if(door != noone){	
			with(door){
				var player = instance_place(x, y, oPlayer);
				if player != noone {
					return true;
				}
			}	
		}
	}
	return false;
}




function gui_player_draw_health(gui_width){
	for (var i = 0; i < oPlayer.maxHealth; i += 1)
	{
		var _xx = gui_width - 70 - (i * 70);
		if(i >= oPlayer.maxHealth - oPlayer.myHealth){
			draw_sprite(sHeartOn,  0, _xx, 48);
		}else{
			draw_sprite(sHeartOff, 0, _xx, 48);
		}
	}
}