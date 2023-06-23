
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
			else if(_int.object_index == pInteractable)
			{
				if(!instance_exists(pUI))
				{
					if(_int.type == 0)
						create_ui(oScanUI);
					else
						create_ui(oItemUI);
				}
			}
		}
	}
}