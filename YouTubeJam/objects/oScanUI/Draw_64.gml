

draw_rectangle_color(48,16,window_get_width()-48,window_get_height()-48,c_ltgray,c_ltgray,c_ltgray,c_ltgray,0);
draw_text_color(32,32,"Press ESC to exit",c_black,c_black,c_black,c_black,1);

var _surf = render_scan(global.env_maparray,room_width/2,room_height/2,coneangle,0.3,0);
var _surfscale = 10;
var _sw = surface_get_width(_surf)*_surfscale; var _sh = surface_get_height(_surf)*_surfscale;
var _sx = room_width/2-_sw/2; var _sy = room_height/2-_sh/2;
draw_surface_ext(_surf,_sx,_sy,_surfscale,_surfscale,0,c_white,1);
draw_rectangle_color(_sx,_sy,_sx+_sw,_sy+_sh,1,c_black,c_black,c_black,1);
surface_free(_surf);

//SURFAXCE FREE