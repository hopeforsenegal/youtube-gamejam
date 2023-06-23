if(room == rOutside)
{
	

	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	// Draw left

	var _textx = global.view_width/7;

	draw_text_transformed_color(_textx,256,"Life Pod:",2,2,0,c_white,c_white,c_white,c_white,1);
	draw_sprite(hub,0,_textx,456);
	draw_text_transformed_color(_textx,656,"Life Support:\nActive",2,2,0,c_green,c_green,c_green,c_green,1);
	draw_text_transformed_color(_textx,756,"Missing Parts!\nFind them\nto escape!",2,2,0,c_white,c_white,c_white,c_white,1);

	// Draw right
	/*_textx = global.view_width*6/7;
	draw_text_transformed_color(_textx,556,"Controls:\nWASD\nArrows\nE to interact",2,2,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);*/
}