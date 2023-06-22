// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function detect_interactable(_x,_y,_range){
	var _nearest = instance_nearest(_x,_y,pInteractable);
	if(_nearest != noone)
	{
		if(point_distance(_x,_y,_nearest.x,_nearest.y) <= _range)
		{
			return _nearest;
		}
		else
		{
			return noone;
		}
	}
}

function player_decrement_health(){
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