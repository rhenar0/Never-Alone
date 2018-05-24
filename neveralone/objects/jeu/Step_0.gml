global.menu = false;

if inventaireouvert {
	var _array_size = array_length_1d(global.inventory);
	instance_activate_object(craftfond);
	if keyboard_check_pressed(vk_right) {
		item_index_ = min(item_index_+1, _array_size-1);
		audio_play_sound(snd_menu_switch, 1, false);
	}
	if keyboard_check_pressed(vk_left) {
		item_index_ = max(item_index_-1, 0);
		audio_play_sound(snd_menu_switch, 1, false);	
	}
	
	
		for (var _i = 0; _i < _array_size; _i++) {
			var _item = global.inventory[_i];
			if keyboard_check_pressed(vk_enter) &&  (_i == item_index_) && (instance_exists(_item)) && (global.crafting_ == 1) {
				audio_play_sound(snd_menu_switch, 1, false);
				global.crafting_ = 2;
				instance_activate_object(menucraft);
			} 
			if global.itemdrop == true {
					global.crafting_ = 1;
						instance_deactivate_object(menucraft);
             	}
			}
		 
		 if (global.crafting_ == 3) {
			 instance_deactivate_object(menucraft);
			 global.crafting_ = 1;
		 }
		 
		}
	
		

	
	
	#region craft
	if instance_exists(global.item[0]) && instance_exists(global.item[1])  {
		// Arc
		if (global.item[0].sprite_index = spr_key1) && (global.item[1].sprite_index = s_sword_item) {
		show_message("Vous avez fabriqué un arc !");
		instance_deactivate_object(o_key1_item);
		instance_deactivate_object(o_sword_item);
		inventory_add_item(o_bow_item);
		}
		if (global.item[1].sprite_index = spr_key1) && (global.item[0].sprite_index = s_sword_item) {
		show_message("Vous avez fabriqué un arc !");
		instance_deactivate_object(o_key1_item);
		instance_deactivate_object(o_sword_item);
		inventory_add_item(o_bow_item);
		}
		
	}
	#endregion





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
		instance_deactivate_object(menucraft);
		instance_deactivate_object(craftfond);
		inventaireouvert = false;
		audio_play_sound(snd_menu_switch, 1, false);
	}
}

if keyboard_check_pressed(vk_tab) && global.paused_ = false {
	if inventaireouvert {
		inventaireouvert = false;
		audio_play_sound(snd_menu_switch, 1, false);
		instance_deactivate_object(craftfond);
	} else {
		inventaireouvert = true;
		audio_play_sound(snd_menu_switch, 1, false);
		instance_activate_object(craftfond);
	}
}

if keyboard_check_pressed(vk_alt) {
	inventory_add_item(o_sword_item);
}