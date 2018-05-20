///@arg file_name
var _file_name = argument0;
ini_open(_file_name);

playername = global.nickplayer;

ini_write_string(playername, "Room", room_get_name(room));
ini_write_real(playername, "Start x", obj_player.x);
ini_write_real(playername, "Start y", obj_player.y);
ini_write_inventory(playername + "_Inv", "Inventory", global.inventory);

ini_close();