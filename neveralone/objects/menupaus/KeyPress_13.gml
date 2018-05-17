/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

switch (menu_index) {
	
	case 0:/*
	audio_play_sound(snd_menu_switch, 1, false);
	if (global.Save) game_load("Save.dat");
	instance_create_layer(850,25,"TextBoxLayer", o_savemessage);
	with (o_savemessage) {
		loadConfirm= true;
	}
	room_goto(4);
	show_debug_message(global.roomPly);
	*/break;
	
	
	case 1:
	if(znet_server_destroy(0) == true && global.MPLaunch == 1) {
		show_debug_message("[MP] Supression Serveur : OK");
		
	}else if (znet_server_destroy(0) == false && global.MPLaunch == 1) {
		show_debug_message("[MP] Supression Serveur : Une erreur est survenue (ID_NoExist)");
	}
	game_end();
	break;
	
}
