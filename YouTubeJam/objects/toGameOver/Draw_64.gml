

draw_text(0,0,"game over");
if(global.death_type == 1)
{
	draw_text(0,10,"you burned");
}else if (global.death_type == 2)
{
	draw_text(0,10,"you suffocated");
}