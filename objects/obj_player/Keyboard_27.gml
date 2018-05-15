/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

	global.Save = true;
	game_save("Save.dat");
	instance_create_layer(850,25,"TextBoxLayer", o_savemessage);
	with (o_savemessage) {
		saveConfirm = true;
	}
	
	global.pause = 1;
	if(global.pouet == 1) room_goto(menupause);