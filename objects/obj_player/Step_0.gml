/// @description Directions
// Vous pouvez écrire votre code dans cet éditeur


// Récupération touches du clavier

var toucheactiver = vk_nokey;


if keyboard_check(ord("Q")) && (global.inventaire = false) && (global.pause = 0) && (global.pouet = 0) && (global.menu = false) then {
	x -= 5
	if (global.net == 1) znet_entity_set_keys(nickname, "touch", 2);
	toucheactiver = true}
if keyboard_check(ord("D")) && (global.inventaire = false) && (global.pause = 0) && (global.pouet = 0) && (global.menu = false) then { x += 5
	if (global.net == 1) znet_entity_set_keys(nickname, "touch", 1);
	toucheactiver = true}
if keyboard_check(ord("S")) && (global.inventaire = false) && (global.pause = 0) && (global.pouet = 0) && (global.menu = false) then { y += 5
	if (global.net == 1) znet_entity_set_keys(nickname, "touch", 4);
	toucheactiver = true}
if keyboard_check(ord("Z")) && (global.inventaire = false) && (global.pause = 0) && (global.pouet = 0) && (global.menu = false) then { y -= 5
	if (global.net == 1) znet_entity_set_keys(nickname, "touch", 3);
	toucheactiver = true}
	


// Animations du joueur1

if toucheactiver = false
{
	image_index = 0;
	image_speed = 0;
} else {
	image_speed = 3;
}


if keyboard_check(ord("D")) && (global.inventaire = false) && (global.pause = 0) && (global.pouet = 0) && (global.menu = false)
{
	sprite_index = sprite_testright;
}
else if keyboard_check(ord("Q")) && (global.inventaire = false) && (global.pause = 0) && (global.pouet = 0) && (global.menu = false)
{
	sprite_index = sprite_testleft;
}
else if keyboard_check(ord("Z")) && (global.inventaire = false) && (global.pause = 0) && (global.pouet = 0) && (global.menu = false)
{
	sprite_index = sprite_testup;
}
else if keyboard_check(ord("S")) && (global.inventaire = false) && (global.pause = 0) && (global.pouet = 0) && (global.menu = false)
{ 
	sprite_index = sprite_testdown;
}