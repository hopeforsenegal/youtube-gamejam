if(!canMove) exit;

var has_debug_inventory_input	= keyboard_check_pressed(vk_space);
var has_debug_point_input		= keyboard_check_pressed(ord("P"));
var h_axis_input = max(keyboard_check(ord("D")), keyboard_check(vk_right)) - max(keyboard_check(ord("A")), keyboard_check(vk_left));
var v_axis_input = max(keyboard_check(ord("S")), keyboard_check(vk_down))  - max(keyboard_check(ord("W")), keyboard_check(vk_up));

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

var isLooping = skeleton_animation_is_looping(0);
var isFinished = skeleton_animation_is_finished(0);

if(isLooping){
	if(v_axis_input != 0 || h_axis_input != 0)
	{
		if(skeleton_animation_get() != "walk"){
			skeleton_animation_set("walk", true);
		}
	}
	else
	{	
		if(skeleton_animation_get() != "idle"){
			skeleton_animation_set("idle", true);
		}
	}
	if(has_debug_point_input){
		if(skeleton_animation_get() != "point"){
			skeleton_animation_set("point", false);
		}
	}
}

if(!isLooping && isFinished){
	// We finshed pointing or being hit
	skeleton_animation_set("idle", true);
	show_debug_message("finsihed");
}

// NOTE:
// Handle "hit" and "point" animations for real

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