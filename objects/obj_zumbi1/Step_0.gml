/// @description Insert description here
// You can write your code in this editor
event_inherited();
if(vida<=0 && morrendo==false){
	morrendo = true;
	global.cont--;
	global.total++;
	instance_create_layer(x,y,"Instances",obj_treme);
	sprite_index=spr_zumbi1_death;	
	image_index=0;
}