if(inrange)
{
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,0.5);
}
else
{
	draw_self();
}