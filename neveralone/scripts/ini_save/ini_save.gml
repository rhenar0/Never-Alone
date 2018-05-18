///@arg file_name
var _file_name = argument0;
ini_open(_file_name);

ini_write_string("Level", "Room", room_get_name(room));
ini_write_real("Level", "Start x", obj_player.x);
ini_write_real("Level", "Start y", obj_player.y);



ini_close();