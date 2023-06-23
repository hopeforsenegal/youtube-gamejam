

draw_rectangle_color(48,16,window_get_width()-48,window_get_height()-48,c_ltgray,c_ltgray,c_ltgray,c_ltgray,0);
draw_text_color(32,32,"Press ESC to exit",c_black,c_black,c_black,c_black,1);

var _surf = render_scan(global.env_maparray,room_width/2,room_height/2,0,0.3,0);
draw_surface_ext(_surf,64,32,10,10,0,c_white,1);
