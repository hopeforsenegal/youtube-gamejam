
draw_set_halign(fa_left);
draw_text(0,10,"game over");

if(global.death_type == 1)
{
	draw_text(0,20,"you burned");
}
else if (global.death_type == 2)
{
	draw_text(0,20,"you suffocated");
}