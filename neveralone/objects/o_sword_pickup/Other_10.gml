if not can_pickup_ exit;
instance_destroy();
audio_play_sound(snd_menu_switch, 2, false);
inventory_add_item(o_sword_item);