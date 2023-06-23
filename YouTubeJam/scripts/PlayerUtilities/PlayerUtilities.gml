// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function detect_interactable(_x,_y,_range,_enable = true){
	var _nearest = instance_nearest(_x,_y,pInteractable);
	if(_nearest != noone)
	{
		if(point_distance(_x,_y,_nearest.x,_nearest.y) <= _range)
		{
			if(_enable)
			{
				_nearest.inrange = true;
			}
			return _nearest;
		}
		else
		{
			return noone;
		}
	}
	return noone;
}

function player_add_inventory(item){
	array_push(global.inventory, item.name);
}

function player_is_invincible(){
	return oPlayer.invincibilityFrames > 0;
}

function player_is_dead(){
	return oPlayer.myHealth <= 0;
}
function player_is_suffocated(){
	return oPlayer.oxygenRemainingFrames <= 0;
}

function player_do_mark_invincible(){
	oPlayer.invincibilityFrames = 90;
}

function player_do_decrement_oxygen(){
	oPlayer.oxygenRemainingFrames = oPlayer.oxygenRemainingFrames - 1;
	return oPlayer.oxygenRemainingFrames;
}

function player_do_decrement_health(){
	oPlayer.myHealth = oPlayer.myHealth - 1;
	return oPlayer.myHealth;
}

function has_player_detect_lava(){
	for (var i = 0; i < instance_number(oLava); ++i;)
	{
	    var lava = instance_find(oLava, i);
		if(lava != noone){	
			with(lava){
				var player = instance_place(x, y, oPlayer);
				if player != noone {
					return true;
				}
			}	
		}
	}
	return false;
}

function has_player_detect_door(d){
	for (var i = 0; i < instance_number(d); ++i;)
	{
	    var door = instance_find(d, i);
		if(door != noone){	
			with(door){
				var player = instance_place(x, y, oPlayer);
				if player != noone {
					return true;
				}
			}	
		}
	}
	return false;
}


function handle_player_restart(){
	if(keyboard_check_pressed(ord("R"))){
		game_restart();
	}
}




function gui_player_draw_oxygen(player, gui_width){	
	var top_y = 30;
	var center_x = gui_width / 2;
	var current_oxygen_percentage = player.oxygenRemainingFrames/player.maxOxygenRemaining * 100
	draw_healthbar(center_x - 50, top_y, center_x + 50, 40, current_oxygen_percentage, c_black, c_red, c_lime, 0, true, true);
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(center_x, top_y -10, "Oxygen");
}

function gui_player_draw_health(player, gui_width){
	var top_y = 30;
	for (var i = 0; i < player.maxHealth; i += 1)
	{
		var heart_position_x = gui_width - 70 - (i * 70);
		var sprite = i >= player.maxHealth - player.myHealth
			       ? sHeartOn
				   : sHeartOff;
		draw_sprite(sprite,  0, heart_position_x, top_y);
	}
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(heart_position_x + 100, top_y- 10, "Health");
}

function gui_player_e_to_interact(gui_width, gui_height)
{
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(gui_width/2, gui_height - 10, "Press 'E' to interact");
}




function create_ui(_ui)
{
	oPlayer.canMove = false;
	return instance_create_layer(0,0,"Instances",_ui);
}

function destroy_ui(_ui)
{
	oPlayer.canMove = true;
	instance_destroy(_ui);
}

function define_view_size()
{
	global.view_width = 1920;
	global.view_height = 1080;
}

function find_cam_pos()
{
	return {
		camx: clamp(oPlayer.x-global.view_width/2,0,room_width-global.view_width),
		camy: clamp(oPlayer.y-global.view_height/2,0,room_height-global.view_height)
	}
}


















