/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

if keyboard_check_pressed(vk_enter) && (global.crafting_ == 2) {
 switch (menu_index) {
	
	case 0:
			audio_play_sound(snd_menu_switch, 1, false);
			global.item[0] = global.inventory[jeu.item_index_];
			global.crafting_ = 3;
			instance_deactivate_object(menucraft);
			break;
	
	
	case 1:
			audio_play_sound(snd_menu_switch, 1, false);
			global.item[1] = global.inventory[jeu.item_index_];
			global.crafting_ = 3;
			instance_deactivate_object(menucraft);	
			break;
	
	case 2: 
			global.itemdrop = true;
			global.crafting_ = 3;
			global.item[0] = noone;
			global.item[1] = noone;
			instance_deactivate_object(menucraft);
			break;
	
	case 3:
			audio_play_sound(snd_menu_switch, 1, false);
			global.crafting_ = 3;
			instance_deactivate_object(menucraft);
			break;
	}

}

if keyboard_check_pressed(vk_left) {
	global.crafting_ = 3;
	instance_deactivate_object(menucraft);	
}

if keyboard_check_pressed(vk_right) {
	global.crafting_ = 3;
	instance_deactivate_object(menucraft);	
}



menu_move = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);

menu_index += menu_move;

if (menu_index < 0) menu_index = buttons -1;
if (menu_index > buttons -1) menu_index = 0;

if (menu_index != last_selected) audio_play_sound(snd_menu_switch, 1, false);

last_selected = menu_index;
