/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y,obj_player) && obj_player.imune==false && obj_player.estado!="morte"){	
	if!(instance_exists(obj_balao)){
		obj_player.vida--;		
	}
	if(obj_player.vida>=1){
		obj_player.imune=true;
		obj_player.espera_imune=true;
	}
}


velh = lerp(velh,vel,acel);
x-=velh;

if(x<camera_get_view_x(view_camera[0])-100){
	instance_destroy();
		
}

if(destruir){
	instance_destroy();	
}