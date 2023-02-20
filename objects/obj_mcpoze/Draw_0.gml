/// @description Insert description here
// You can write your code in this editor
randomize();

if(room==rm_inicio && !obj_pause.pause && mcpoze){
			//Desenhando tela preta
			draw_set_alpha(.2);
			draw_set_color(cor);
			draw_rectangle(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),camera_get_view_x(view_camera[0])+800,camera_get_view_y(view_camera[0])+800,false);
			draw_set_alpha(1);
			draw_set_color(c_white);
			
}

if(mudar){
	mudar = false;
	alarm[0]=room_speed/1.5;
}