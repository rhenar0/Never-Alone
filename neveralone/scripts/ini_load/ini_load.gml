///@arg = file_name
var _file_name = argument0;

global.load = true;
ini_open(_file_name);

playername = global.nickplayer;

var _room_name = ini_read_string(playername, "Room", "");
global.start_x = ini_read_real(playername, "Start x", 500);
global.start_y = ini_read_real(playername, "Start y", 0);
global.inventory = ini_read_inventory("Player", "Inventory", []);

ini_close();

if _room_name == "" {
	show_message("Aucune sauvegarde trouvée !");
	game_end();
} 

var _room = asset_get_index(_room_name);
room_goto(_room);