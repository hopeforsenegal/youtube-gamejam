
coneangle += keyboard_check(vk_left)-keyboard_check(vk_right);

if(keyboard_check(vk_space))
{
	var _surf = render_scan(env_maparray,256,256,coneangle,0.3,0);
	draw_surface_ext(_surf,16,16,2,2,0,c_white,1);
}
