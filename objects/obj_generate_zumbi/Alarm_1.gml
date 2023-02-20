/// @description Insert description here
// You can write your code in this editor
distancia=irandom_range(300,390);
total +=distancia;
instance_create_layer(obj_player.x+total,576,"monster",obj_monster);
criar_monstro=true;
contador_monstro++;