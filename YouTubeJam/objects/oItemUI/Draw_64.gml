

draw_rectangle_color(48,16,window_get_width()-48,window_get_height()-48,c_ltgray,c_ltgray,c_ltgray,c_ltgray,0);
draw_text_transformed_color(256,34,"Items",1.5,1.5,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_color(256,64,"Press ESC to exit",2,2,0,c_black,c_black,c_black,c_black,1);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var _textx = window_get_width()/2;
var _texty = window_get_height()/2-448;
var _itemcount = array_length(global.inventory);

draw_text_transformed_color(_textx,_texty,"Items collected: "+string(_itemcount),2,2,0,c_black,c_black,c_black,c_black,1);

for(var i=0;i<_itemcount;i++)
{
	draw_text_transformed_color(_textx,_texty+64*(i+1),global.inventory[i],2,2,0,c_black,c_black,c_black,c_black,1);
}

draw_set_halign(fa_left);
draw_set_valign(fa_top);