/// @description Insert description here
// You can write your code in this editor
x+=5;

if(place_meeting(x-20,y,obj_zumbi_pai)){
	obj_zumbi_pai.vida-=5;
	audio_stop_sound(snd_zumbi);
}

if(place_meeting(x,y,obj_player) && obj_player.imune==false){
	if!(instance_exists(obj_balao)){
		obj_player.vida--;		
	}
	if(obj_player.vida>=1){
		obj_player.imune=true;
		obj_player.espera_imune=true;
	}
}

if(x>camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])+sprite_get_width(spr_bala)){
	instance_destroy();	
}