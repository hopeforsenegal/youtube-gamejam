
gui_player_draw_health(gui_w);

var center_x = gui_w / 2;
var current_oxygen_percentage = oPlayer.oxygenRemainingFrames/oPlayer.maxOxygenRemaining * 100
draw_healthbar(center_x - 50, 24, center_x + 50, 40, current_oxygen_percentage, c_black, c_red, c_lime, 0, true, true);