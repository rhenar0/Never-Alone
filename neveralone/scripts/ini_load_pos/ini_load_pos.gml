///@arg = file_name
var _file_name = argument0;

global.load = true;
ini_open(_file_name);

playername = global.nickplayer;

global.start_x = ini_read_real(playername, "Start x", 500);
global.start_y = ini_read_real(playername, "Start y", 0);

ini_close();