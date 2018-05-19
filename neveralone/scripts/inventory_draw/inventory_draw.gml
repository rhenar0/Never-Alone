///@arg x
///@arg y
if not jeu.inventaireouvert exit;
audio_play_sound(snd_menu_switch, 1, false);
show_message("inventaire ouvert");
var _x = argument0;
var _y = argument1;
var _array_size = array_length_1d(global.inventory);

for (var _i = 0; _i < _array_size; _i++) {
	var _box_x = _x+_i*32;
	var _box_y = _y;
	draw_sprite(s_inventory_box, 0, _box_x, _box_y);
	
}