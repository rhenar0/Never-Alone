/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

switch (menu_index) {
	
	case 0:
	audio_play_sound(snd_menu_switch, 1, false);
	room_goto(rm_menu);
	global.menu = false;
	global.createParty = true;
	break;
	
	case 1:
	audio_play_sound(snd_menu_switch, 1, false);
	room_goto(rm_menu);
	global.createParty = true;
	global.loadParty = true;
	
	break;
	
	
	
	case 3:
	audio_play_sound(snd_menu_switch, 1, false);
	show_message("Pas encore disponible !");
	break;

	case 4:
	game_end();
	break;
	
	case 2:
	global.joinParty = true;
	room_goto(rm_menu)
	break;
	
	
}
