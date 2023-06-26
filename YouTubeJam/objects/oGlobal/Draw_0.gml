

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var _textx = room_width/5;
var _texty = room_height/3;
var _string = "RED PLANET";
draw_text_transformed_color(_textx-1,_texty-1,_string,8,8,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_color(_textx+1,_texty+1,_string,8,8,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_color(_textx,_texty,_string,8,8,0,c_red,c_red,c_red,c_red,1);

_texty = room_height*2/3;
_string = "PRESS ANY KEY"
draw_text_transformed_color(_textx-1,_texty-1,_string,2,2,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_color(_textx+1,_texty+1,_string,2,2,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_color(_textx,_texty,_string,2,2,0,c_white,c_white,c_white,c_white,1);

draw_set_halign(fa_left);
draw_set_valign(fa_top);