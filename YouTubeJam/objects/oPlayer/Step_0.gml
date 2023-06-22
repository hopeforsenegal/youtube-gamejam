
var h_axis_input = max(keyboard_check(ord("D")), keyboard_check(vk_right)) - max(keyboard_check(ord("A")), keyboard_check(vk_left));
var v_axis_input = max(keyboard_check(ord("S")), keyboard_check(vk_down))  - max(keyboard_check(ord("W")), keyboard_check(vk_up));
var has_interact_input			= keyboard_check_pressed(ord("E"));
var has_debug_inventory_input	= keyboard_check_pressed(vk_space);

var _hsp = _hin * mySpeed;
var _vsp = _vin * mySpeed;

if(!place_meeting(x+_hsp,y,oWall))
{
	x += _hsp;
}
if(!place_meeting(x,y+_vsp,oWall))
{
	y += _vsp;
}


var _int = detect_interactable(x,y,interactRange);
if(has_interact_input && _int != noone)
{
	_int.interact();
}


// TODO: Remove this debug inventory logging
if(has_debug_inventory_input)
{
	show_debug_message(inventory);
}

if(invincibilityFrames > 0){
	invincibilityFrames--;
}