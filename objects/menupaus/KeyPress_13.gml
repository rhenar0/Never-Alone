/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

switch (menu_index) {
	
	case 0:
	audio_play_sound(snd_menu_switch, 1, false);
	if (global.Save) game_load("Save.dat");
	instance_create_layer(850,25,"TextBoxLayer", o_savemessage);
	with (o_savemessage) {
		loadConfirm= true;
	}
	break;
	
	
	case 1:
	room_goto(menup);
	global.menu = true;
	break;
	
}
