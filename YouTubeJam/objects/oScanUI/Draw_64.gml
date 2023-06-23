

draw_rectangle_color(48,16,window_get_width()-48,window_get_height()-48,c_ltgray,c_ltgray,c_ltgray,c_ltgray,0);
draw_text_transformed_color(256,34,"Camera",1.5,1.5,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_color(256,64,"Press ESC to exit",2,2,0,c_black,c_black,c_black,c_black,1);

var _surf = render_scan(global.env_maparray,global.scanx,global.scany,coneangle,0.3,0);
var _surfscale = 5;
var _sw = surface_get_width(_surf)*_surfscale; var _sh = surface_get_height(_surf)*_surfscale;
var _sx = window_get_width()/2-_sw/2; var _sy = window_get_height()/2-_sh/2;
draw_surface_ext(_surf,_sx,_sy,_surfscale,_surfscale,0,c_white,1);
draw_rectangle_color(_sx,_sy,_sx+_sw,_sy+_sh,1,c_black,c_black,c_black,1);
surface_free(_surf);
