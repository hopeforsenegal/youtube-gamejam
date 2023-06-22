
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


show_debug_message(detect_interactable(x,y,interactRange));