/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

global.menu = true;
global.MPLaunch = 0;
menu_x = x;
menu_y = y;
button_h = 52;


button[0] = "Jouer";
button[1] = "Continuer";
button[2] = "Multijoueur";
button[3] = "Language";
button[4] = "Quitter";
buttons = array_length_1d(button);

menu_index = 0;
last_selected = 0;