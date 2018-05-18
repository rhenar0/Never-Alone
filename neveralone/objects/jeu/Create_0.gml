global.load = false;
global.start_x = noone;
global.start_y = noone;
global.player_start_position = noone;
paused_ = false;
instance_deactivate_object(paustest);
instance_deactivate_object(textpaus);
//allObjets[0, 0] = noone;


var _view_width = camera_get_view_width(view_camera[0]);
var _view_height = camera_get_view_height(view_camera[0]);
display_set_gui_size(_view_width, _view_height);


paused_sprite_scale = display_get_gui_width()/view_wport[0]