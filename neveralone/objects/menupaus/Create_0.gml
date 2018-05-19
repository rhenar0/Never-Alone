/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

menu_x = x;
menu_y = y;
button_h = 52;


button[0] = "Reprendre";
button[1] = "Quitter le jeu";

buttons = array_length_1d(button);

menu_index = 0;
last_selected = 0;

client = variable_global_get("clt");
nickname = variable_global_get("nick");