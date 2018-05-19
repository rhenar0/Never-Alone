

global.menu = false;

if keyboard_check_pressed(vk_escape) {
	if paused_ {
		paused_ = false;
		instance_activate_all();
		audio_play_sound(snd_menu_switch, 1, false);
		instance_deactivate_object(paustest);
		instance_deactivate_object(textpaus);
	} else {
		paused_ = true;
	    ini_save("save_data.ini");
		instance_deactivate_all(true);
		instance_activate_object(paustest);
		instance_activate_object(textpaus);
		audio_play_sound(snd_menu_switch, 1, false);
	}
	
}