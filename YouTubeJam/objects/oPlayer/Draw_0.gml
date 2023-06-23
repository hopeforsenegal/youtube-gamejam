draw_self();

if(room == rOutside)
{
	draw_sprite(sVision,0,x,y);
	draw_sprite_ext(sVision,0,x,y,1,1,90,c_white,1);
	draw_sprite_ext(sVision,0,x,y,1,1,180,c_white,1);
	draw_sprite_ext(sVision,0,x,y,1,1,270,c_white,1);
	
	if(distance_to_object(oPodDoor) > 300)
	{
		// Draw arrow
		var _distance = 320;
		var _dir = point_direction(x,y,oPodDoor.x,oPodDoor.y);
		var _ax = lengthdir_x(_distance,_dir);
		var _ay = lengthdir_y(_distance,_dir);
		draw_sprite_ext(sArrow,0,x+_ax,y+_ay,1,1,_dir,c_white,1);
	}
}

