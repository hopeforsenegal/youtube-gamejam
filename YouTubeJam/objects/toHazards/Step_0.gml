
if(has_player_detect_lava()){
	var pHealth  = player_decrement_health();
	show_debug_message("Hit lava! new health is " + string(pHealth));
}
