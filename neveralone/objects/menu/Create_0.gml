/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

global.menu = true;
global.sauvegarde = false;
global.MPLaunch = 0;
global.joinParty = false;
global.createParty = false;
global.loadParty = false;
global.continue = false;
menu_x = x;
menu_y = y;
button_h = 52;


button[0] = "Nouveau";
button[1] = "Continuer";
button[2] = "Rejoindre";
button[3] = "Language";
button[4] = "Quitter";
buttons = array_length_1d(button);

menu_index = 0;
last_selected = 0;