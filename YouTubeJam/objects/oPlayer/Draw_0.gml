draw_self();

if(room == rOutside)
{
	draw_sprite(sVision,0,x,y);
	draw_sprite_ext(sVision,0,x,y,1,1,90,c_white,1);
	draw_sprite_ext(sVision,0,x,y,1,1,180,c_white,1);
	draw_sprite_ext(sVision,0,x,y,1,1,270,c_white,1);
}

