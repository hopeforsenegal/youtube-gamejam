event_inherited();

name = "Doohickey";

interact = function()
{
	array_push(oPlayer.inventory, name);
	instance_destroy();
}