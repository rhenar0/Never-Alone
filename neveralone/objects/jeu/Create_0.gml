global.load = false;
global.start_x = noone;
global.start_y = noone;
global.player_start_position = noone;
global.paused_ = false;
inventaireouvert = false;
item_index_ = 0;
global.item[0] = noone;
global.item[1] = noone;
instance_deactivate_object(pausfond);
instance_deactivate_object(textpaus);
instance_deactivate_object(menupaus);


var _view_width = camera_get_view_width(view_camera[0]);
var _view_height = camera_get_view_height(view_camera[0]);
display_set_gui_size(_view_width, _view_height);

inventory_create(6);
inventory_add_item(o_key1_item);