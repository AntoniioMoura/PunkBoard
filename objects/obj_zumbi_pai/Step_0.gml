/// @description Insert description here
// You can write your code in this editor

	if(collision_rectangle(x-valor,y+150,x+valor,y-150,obj_player,false,false)){
		vel=2.9;	
	}else{
		vel=3.4;	
	}


if(place_meeting(x,y,obj_player) && obj_player.imune==false && !morrendo && obj_player.estado!="morto"){
	if!(instance_exists(obj_balao)){
		obj_player.vida--;		
	}
	if(obj_player.vida>=1){
		obj_player.imune=true;
		obj_player.espera_imune=true;
	}
}


if(turbo){
	turbo=false;
	alarm[0]=room_speed*40;	
}
velh = lerp(velh,vel,acel);
if(obj_player.estado!="morte"){
	if(x<=obj_player.x){
		x+=velh;
	}
}else{
	x+=velh;
}

