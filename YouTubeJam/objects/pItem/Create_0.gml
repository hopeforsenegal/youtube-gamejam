event_inherited();

name = "Doohickey";

interact = function()
{
	player_add_inventory(self);
	instance_destroy(self);
}