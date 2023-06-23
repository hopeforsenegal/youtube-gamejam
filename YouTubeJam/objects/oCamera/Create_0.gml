
define_view_size();

var _newpos = find_cam_pos();

view_camera[0] = camera_create_view(_newpos.camx,_newpos.camy,global.view_width,global.view_height);
view_wport[0] = global.view_width;
view_hport[0] = global.view_height;