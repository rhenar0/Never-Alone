var _array_size = array_length_1d(global.inventory);
for (var _i = 0; _i < _array_size; _i++) {
var _item = global.inventory[_i];
var _item_index = array_find_index(_item, global.inventory);

if _i == item_index_ {
		if instance_exists(_item) && global.itemdrop = true {
			if (_item.sprite_ = spr_key1) {
				znet_entity_create("item", "key", "x", obj_player.x, "y", obj_player.y)
				instance_create_layer(obj_player.x, obj_player.y, "Instances", o_key1_pickup);
				global.inventory[_i] = noone; 
				global.itemdrop = false;
			} 
			if (_item.sprite_ = s_sword_item) {
		
				instance_create_layer(obj_player.x, obj_player.y, "Instances", o_sword_pickup);
				global.inventory[_i] = noone; 
				global.itemdrop = false;
			} 
			if (_item.sprite_ = s_bow_item) {
	
				instance_create_layer(obj_player.x, obj_player.y, "Instances", o_bow_pickup);
				global.inventory[_i] = noone; 
				global.itemdrop = false;
			} 
			
			
			
			
			
			
		} else { global.itemdrop = false; }
	}
}