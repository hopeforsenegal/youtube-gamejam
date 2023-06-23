
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
			}
			else if(_int.object_index == pInteractable)
			{
				create_ui(oScanUI);
			}
		}
	}
}