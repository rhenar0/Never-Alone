/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

switch (menu_index) {
	
	case 0:
		    global.paused_ = false;
			instance_activate_all();
			audio_play_sound(snd_menu_switch, 1, false);
			instance_deactivate_object(pausfond);
			instance_deactivate_object(textpaus);
			instance_deactivate_object(menupaus);
			instance_deactivate_object(menucraft);
			instance_deactivate_object(craftfond);
	break;
	
	
	case 1:
	if(znet_server_destroy(0) == true && global.MPLaunch == 1) {
		show_debug_message("[MP] Supression Serveur : OK");
		
	}else if (znet_server_destroy(0) == false && global.MPLaunch == 1) {
		show_debug_message("[MP] Supression Serveur : Une erreur est survenue (ID_NoExist)");
	}
	game_end();
	break;
	
}
