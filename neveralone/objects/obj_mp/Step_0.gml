//Creation serveur
if(global.createParty == true){

        var ip = get_string("IP:", "127.0.0.1");
        var port = get_integer("Port:", 5600);
		var nickname = get_string("Pseudo:", "Zetsu");
		variable_global_set("nick", nickname);
    
	    server = znet_server_create(port, 2, "1.0.0");
        
        if(server != -1)
            client = znet_client_create(ip, port, "1.0.0");
        
        if(server >= 0 && client >= 0){
        
			global.createParty = false;
			
            piloy = 2;
        
        }else{
        
            show_message("Impossible de ce connecter au serveur !");
			global.net = 0;
        
		}

//Menu connexion
}else if(global.joinParty == true){

    var ip = get_string("IP:", "127.0.0.1");
    var port = get_integer("Port:", 5600);
	var nickname = get_string("Pseudo:", "Zetsu");
	variable_global_set("nick", nickname);

    client = znet_client_create(ip, port, "1.0.0");
        
    if(client >= 0){
		
		global.joinParty = false;
        piloy = 2;
    
    }else{
    
        show_message("Impossible de ce connecter au serveur !");
		global.net = 0;
        piloy = 0;
    
    }

//Menu connecté
}else if(piloy == 2){

    if(znet_client_get_state(client) == "client_timeout"){
    
        show_message("Connexion au serveur perdu !");
		global.net = 0;
        piloy = 0;
        
        znet_client_destroy(client);
    
    }else{
    
        if(znet_client_get_state(client) == "client_server_full"){
    
            show_message("La partie est pleine !");
			global.net = 0;
            piloy = 0;
            
            znet_client_destroy(client);
        
        }else{
            
            if(keyboard_check_pressed(ord("S"))){
                
				global.net = 1;
                
				name = variable_global_get("nick");
				
                if (global.continue == true){
					show_debug_message("OK Sauvegarde");
					global.nickplayer = name;
					ini_load("save_data.ini");
					znet_entity_create("player", name, "x", global.start_x, "y", global.start_y);
					global.createPlayer = true;
				}else{
					show_debug_message("Problème Sauvegarde");
					global.nickplayer = name;
					room_goto(depart01);
					znet_entity_create("player", name, "x", 0, "y", 0);
					global.createPlayer = true;
				}
                
                znet_entity_attach_client(name, client);
				global.continue = false;
				piloy = 3;
            
            }
        
        }
    
    }

//Jeu
}else if(piloy == 3){
	name = variable_global_get("nick");
	
    if(znet_client_get_state(client) == "client_timeout"){
    
        show_message("Connexion au serveur perdu !");
        piloy = 0;
        room_goto(menup);
        
        znet_client_destroy(client);
    
	}else{
		znet_entity_set_keys(name, "x", obj_player.x, "y", obj_player.y);
    }

}

