
draw_set_halign(fa_center);
draw_text(gui_w/2,10,"game over");

if(global.death_type == 1)
{
	draw_text(gui_w/2,20,"you burned");
}
else if (global.death_type == 2)
{
	draw_text(gui_w/2,20,"you suffocated");
}