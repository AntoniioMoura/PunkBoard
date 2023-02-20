/// @description Insert description here
// You can write your code in this editor
//x = camera_get_view_x(view_camera[0])+38;
x = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])-60;
y = 400;


if(obj_player.vel>=4){
	image_index=1;	
}else if(obj_player.vel>=3){
	image_index=0;	
}else if(obj_player.vel<=3){
	image_index=2;	
}