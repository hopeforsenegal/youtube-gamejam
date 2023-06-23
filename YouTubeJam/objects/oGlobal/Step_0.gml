if(keyboard_check_pressed(vk_anykey))
{
	audio_stop_all();
	room_goto(rOutside);
}