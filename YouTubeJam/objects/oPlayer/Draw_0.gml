/// @description Insert description here
// You can write your code in this editor


draw_self();

draw_text_color(x,y-64,fps,c_black,c_black,c_black,c_black,1);

if(keyboard_check_pressed(ord("P"))) game_set_speed(60,gamespeed_fps)