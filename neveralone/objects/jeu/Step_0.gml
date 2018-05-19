
global.menu = false;

if keyboard_check_pressed(vk_escape) {
	if global.paused_ = true {
		
	}
	if global.paused_ = false {
		global.paused_ = true;
	    ini_save("save_data.ini");
		instance_deactivate_all(true);
		instance_activate_object(pausfond);
		instance_activate_object(textpaus);
		instance_activate_object(menupaus);
		audio_play_sound(snd_menu_switch, 1, false);
	}
}

if keyboard_check_pressed(vk_tab) {
	if inventaireouvert {
		inventaireouvert = false;
		audio_play_sound(snd_menu_switch, 1, false);
		show_message("inventaire fermé");
	} else {
		inventaireouvert = true;
		inventory_draw(150, 150);
	}
}