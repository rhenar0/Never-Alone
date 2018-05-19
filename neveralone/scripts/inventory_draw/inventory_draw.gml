///@arg x
///@arg y
if not jeu.inventaireouvert exit;
var _x = argument0;
var _y = argument1;
var _array_size = array_length_1d(global.inventory);

for (var _i = 0; _i < _array_size; _i++) {
	var _box_x = _x+_i*80;
	var _box_y = _y;
	draw_sprite(s_inventory_box, 0, _box_x, _box_y);
	
	var _item = global.inventory[_i];
	if instance_exists(_item) {
		draw_sprite(_item.sprite_, 0, _box_x+40, _box_y+40);
	}
	
	if _i == item_index_ {
		draw_sprite(s_inv_cursor, image_index/8, _box_x, _box_y);
		if instance_exists(_item) {
			draw_set_font(font_description);
			draw_set_color(c_white);
			draw_text(_x+200, _y+150, _item.description_);
			var _description_height = string_height (_item.description_);
			//draw_text(_x+4, _y+48+_description_height, );
		}
	}
}

draw_sprite(s_inventory_box, 0, 250, 520);
draw_sprite(s_inventory_box, 0, 330, 520);
draw_set_font(font_description);
draw_set_color(c_white);
draw_text(325, 535, "Crafting");
if instance_exists(global.item[0])  {
	draw_sprite(global.item[0].sprite_, 0, 290, 560);
}
if instance_exists(global.item[1])  {
	draw_sprite(global.item[1].sprite_, 0, 370, 560);
}
