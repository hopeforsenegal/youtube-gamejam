
var has_interact_input = keyboard_check_pressed(ord("E"));

with(oPlayer){
	var _int = detect_interactable(x,y,interactRange);

	if(has_interact_input && _int != noone)
	{
		player_add_inventory(_int);
		instance_destroy(_int);
		show_debug_message("We did inventory stuff!");
	}	
}