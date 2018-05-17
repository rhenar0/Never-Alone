if(keyboard_check_pressed(vk_tab) && (global.menu = false)) { show_inventory = !show_inventory;
									 audio_play_sound(snd_menu_switch, 1, false);
									
								   } 
if (show_inventory = false) { global.inventaire = false; } else { global.inventaire = true; }							   
if(!show_inventory) exit;
#region Souris Slot
mousex = device_mouse_x_to_gui(0);
mousey = device_mouse_y_to_gui(0);

var cell_xbuff = (cell_size+x_buffer)*scale;
var cell_ybuff = (cell_size+y_buffer)*scale;

var i_mousex = mousex - slots_x;
var i_mousey = mousey - slots_y;

var nx = i_mousex div cell_xbuff
var ny = i_mousey div cell_ybuff

var mouse_in_inventory = true;
if(nx >= 0 and nx < inv_slots_width and ny >= 0 and ny < inv_slots_height) {
	var sx = i_mousex - (nx*cell_xbuff);
	var sy = i_mousey - (ny*cell_ybuff);
	
	if((sx < cell_size*scale) and (sy < cell_size*scale)){
m_slotx = nx;
m_sloty = ny;
	}
} else { mouse_in_inventory = false;}

// Sélectionner le slot à la position de la souris
selected_slot = min(inv_slots-1, m_slotx + (m_sloty*inv_slots_width));
#endregion

// Attraper un item


var inv_grid = ds_inventory;
var ss_item = inv_grid[# 0, selected_slot];

if(pickup_slot != -1) {
	if(mouse_check_button_pressed(mb_left)){
		if(!mouse_in_inventory) {
		#region Drop l'item	
		
		var pitem = inv_grid[# 0, pickup_slot];
		
				 inv_grid[# 1, pickup_slot] -= 1;
				 
				// Détruire l'item de l'inventaire si c'était le dernier
				if(inv_grid[# 1, pickup_slot] == 0) { 
					inv_grid[# 0, pickup_slot] = item.none; 
					pickup_slot = -1;
					}
			
					// Créer l'item
					var inst = instance_create_layer(joueurtest.x, joueurtest.y, "Instances", obj_item);
					item_num = pitem;
					znet_entity_create("obj","item","x", obj_player.x, "y", obj_player.y, "item_num", pitem, "x_frame", item_num mod (spr_width/cell_size), "y_frame", item_num div (spr_width/cell_size));
					with(inst){
						item_num = pitem;
						x_frame = item_num mod (spr_width/cell_size);
						y_frame = item_num div (spr_width/cell_size);
					}
		
		
			
		#endregion
		}		else if(ss_item == item.none) {
				inv_grid[# 0, selected_slot] = inv_grid[# 0, pickup_slot];
				inv_grid[# 1, selected_slot] = inv_grid[# 1, pickup_slot];
				
				inv_grid[# 0, pickup_slot] = item.none;
				inv_grid[# 1, pickup_slot] = 0;
				
				pickup_slot = -1;
				
			} else if (ss_item == inv_grid[# 0, pickup_slot]) {
				if(selected_slot != pickup_slot){
					inv_grid[# 1, selected_slot] += inv_grid[# 1, pickup_slot];
					inv_grid[# 0, pickup_slot] = item.none;
					inv_grid[# 1, pickup_slot] = 0;
				}
				
				pickup_slot = -1;
			} else {
				var ss_item_num = inv_grid[# 1, selected_slot];
				inv_grid[# 0, selected_slot] = inv_grid[# 0, pickup_slot];
				inv_grid[# 1, selected_slot] = inv_grid[# 1, pickup_slot];
				
				inv_grid[# 0, pickup_slot] = ss_item;
				inv_grid[# 1, pickup_slot] = ss_item_num;
				
			//	pickup_slot = -1;
			}
	}
}
else if(ss_item != item.none){
	// Drop l'item dans le monde
/*	if(mouse_check_button_pressed(mb_middle)) {
		inv_grid[# 1, selected_slot] -= 1;
		// Détruire l'item de l'inventaire si c'était le dernier
		if(inv_grid[# 1, selected_slot] == 0) { 
			inv_grid[# 0, selected_slot] = item.none; 
			}
			
			// Créer l'item
			var inst = instance_create_layer(joueurtest.x, joueurtest.y, "Instances", obj_item);
			with(inst){
				item_num = ss_item;
				x_frame = item_num mod (spr_width/cell_size);
				y_frame = item_num div (spr_width/cell_size);
			}
		
		
	}*/
	
	// Dans l'inventaire
	if(mouse_check_button_pressed(mb_right)){
		pickup_slot = selected_slot;
	}
}