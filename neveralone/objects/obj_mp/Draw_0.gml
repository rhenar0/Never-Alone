draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
nickname = variable_global_get("nick");
//Affiche les menus

//Creation serveur
if(piloy == 0){
    
    //draw_text(room_width / 2, 128, string_hash_to_newline("Multijoueur Beta"));
    //draw_text(room_width / 2, room_height / 2, string_hash_to_newline("Appuyez sur H pour héberger.##Appuyez sur J pour rejoindre."));

//Connexion
}else if(piloy == 1){

    draw_text(room_width / 2, room_height / 2, string_hash_to_newline("Connexion..."));

//Connecté
}else if(piloy == 2){
	
    draw_text(room_width / 2, room_height / 2, string_hash_to_newline("Connecte a la partie !##Pseudo:#" + nickname));
    draw_text(room_width / 2, room_height - 64, string_hash_to_newline("Appuyez sur 'S' pour commencer."));

//Jeu
}else if(piloy == 3){

    draw_set_color(c_red);
    
    draw_set_halign(fa_center);
    draw_set_valign(fa_bottom);

    var players = znet_entity_get_list("player");
    
    if(players != undefined){
    
        for(var i = 0; i < array_length_1d(players); i++){
        
            if(players[i] != nickname){
            
                var px = znet_entity_get_key(players[i], "x");
                var py = znet_entity_get_key(players[i], "y");
				
				var touch = znet_entity_get_key(players[i], "touch");
            
				if(touch == 1)
					draw_sprite(sprite_testright, 0, px, py);
				if(touch == 2)
					draw_sprite(sprite_testleft, 0, px, py);
				if(touch == 3)
					draw_sprite(sprite_testup, 0, px, py);
				if(touch == 4)
					draw_sprite(sprite_testdown, 0, px, py);
                draw_text(px, py - 40, string_hash_to_newline(players[i]));
            
            }
        
        }
    
    }
    
    draw_text(obj_player.x, obj_player.y - 40, string_hash_to_newline(nickname));

}

