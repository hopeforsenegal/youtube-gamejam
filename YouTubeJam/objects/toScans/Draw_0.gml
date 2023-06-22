
if(keyboard_check(vk_space))
{
	var _surf = render_scan_full(maparray);
	draw_surface_ext(_surf,16,16,2,2,0,c_white,1);
}

if(keyboard_check_pressed(vk_space))
{
	show_debug_message(maparray);
}

if(keyboard_check_pressed(ord("E")))
{
	show_debug_message(maparray);
}