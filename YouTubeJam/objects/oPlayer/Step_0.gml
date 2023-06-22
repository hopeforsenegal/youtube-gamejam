
var _hin = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _vin = keyboard_check(ord("S")) - keyboard_check(ord("W"));

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


var _iin = keyboard_check_pressed(ord("E"));
var _int = detect_interactable(x,y,interactRange);
if(_iin && _int != noone)
{
	_int.interact();
}


if(keyboard_check_pressed(vk_space))
{
	show_debug_message(inventory);
}