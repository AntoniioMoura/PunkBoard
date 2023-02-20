/// @description Insert description here
// You can write your code in this editor

if(collision_rectangle(x-150,y+100,x+150,y-100,obj_player,false,false)){
		vel=2.9;	
}else{
		vel=3.4;	
}

if(place_meeting(x,y,obj_player) && obj_player.imune==false && !morrendo && obj_player.estado!="morte"){
	if!(instance_exists(obj_balao)){
		obj_player.vida--;		
	}
	if(obj_player.vida>=1){
		obj_player.imune=true;
		obj_player.espera_imune=true;
	}
}


velh = lerp(velh,vel,acel);
if(obj_player.estado!="morte"){
	if(x<=obj_player.x){
		x+=velh;
	}
}else{
	x+=velh;
}


if(atirar){
	atirar=false;
	alarm[0]=room_speed*5;
}
if(vida<=0){
	sprite_index=spr_boss_death;
	if(image_index>=image_number-1){
		obj_player.balao=true;
		instance_destroy();	
	}
}

if(global.cont<=0){
	audio_stop_sound(snd_zumbi);	
}
