global.menu = false;

if inventaireouvert {
	var _array_size = array_length_1d(global.inventory);
	if keyboard_check_pressed(vk_right) {
		item_index_ = min(item_index_+1, _array_size-1);
		audio_play_sound(snd_menu_switch, 1, false);
	}
	if keyboard_check_pressed(vk_left) {
		item_index_ = max(item_index_-1, 0);
		audio_play_sound(snd_menu_switch, 1, false);
	}
	
	if keyboard_check_pressed(ord("L")) {
		global.item[0] = global.inventory[item_index_];
		audio_play_sound(snd_menu_switch, 1, false);
	}
	
	if keyboard_check_pressed(ord("M")) {
		global.item[1] = global.inventory[item_index_];
		audio_play_sound(snd_menu_switch, 1, false);
	}
	if keyboard_check_pressed(ord("J")) {
		global.itemdrop = true;
	}

}




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
		inventaireouvert = false;
		audio_play_sound(snd_menu_switch, 1, false);
	}
}

if keyboard_check_pressed(vk_tab) && global.paused_ = false {
	if inventaireouvert {
		inventaireouvert = false;
		audio_play_sound(snd_menu_switch, 1, false);
	} else {
		inventaireouvert = true;
		audio_play_sound(snd_menu_switch, 1, false);
	}
}

if keyboard_check_pressed(vk_alt) {
	inventory_add_item(o_sword_item);
}