/// @description Insert description here
// You can write your code in this editor
draw_self();
if(place_meeting(x+10,y,obj_tiro)){
	if(cont==1){
		draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_red,1);	
		cont=2;
	}else{
		draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,1);	
		cont=1;
	}
} 

var vida_atual = (vida/max_vida)*100;
draw_healthbar(camera_get_view_x(view_camera[0])+100,camera_get_view_y(view_camera[0])+70, camera_get_view_x(view_camera[0])+300, camera_get_view_y(view_camera[0])+80,vida_atual,c_black,c_red,c_red,0,true,true);