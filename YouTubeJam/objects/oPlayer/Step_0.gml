
var h_axis_input = max(keyboard_check(ord("D")), keyboard_check(vk_right)) - max(keyboard_check(ord("A")), keyboard_check(vk_left));
var v_axis_input = max(keyboard_check(ord("S")), keyboard_check(vk_down))  - max(keyboard_check(ord("W")), keyboard_check(vk_up));
var has_debug_inventory_input	= keyboard_check_pressed(vk_space);

var _hsp = h_axis_input * mySpeed;
var _vsp = v_axis_input * mySpeed;

if(image_xscale < 0 && h_axis_input > 0)
{
	image_xscale = abs(image_xscale) * 1;
} 
else if(image_xscale > 0 && h_axis_input < 0)
{
	image_xscale = abs(image_xscale) * -1;
}

if(!place_meeting(x+_hsp,y,oWall))
{
	x += _hsp;
}
if(!place_meeting(x,y+_vsp,oWall))
{
	y += _vsp;
}



// TODO: Remove this debug inventory logging
if(has_debug_inventory_input)
{
	show_debug_message(inventory);
}

if(invincibilityFrames > 0){
	invincibilityFrames--;
}