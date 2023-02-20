/// @description Insert description here
// You can write your code in this editor
//Desenhando tela preta


if(room==rm_inicio && (obj_player.estado=="morte" || existe))
			draw_set_alpha(.5);
			draw_set_color(c_black);
			draw_rectangle(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),camera_get_view_x(view_camera[0])+800,camera_get_view_y(view_camera[0])+800,false);
			draw_set_alpha(1);
			draw_set_color(c_white);
	
			
			//-----------------Desenhando menu
			var w = sprite_get_width(spr_pause)+75;
			var h = sprite_get_height(spr_pause);
			var posx = view_get_wport(view_camera[0])/2;
			var posy = view_get_hport(view_camera[0])/2;
			
			//Seleção
			if(keyboard_check_pressed(vk_up)){
				if(pause>0){
					pause--;
				}else{
					pause = array_length_1d(opcoes)-1;	
				}
			}
			
			if(keyboard_check_pressed(vk_down)){
				if(pause<array_length_1d(opcoes)-1){
					pause++;	
				}else{
					pause=0;	
				}
			}
			
			var c1=c_white;
			var c2=c_black;
			if(existe){
				draw_set_color(c_red);
				draw_text(camera_get_view_x(view_camera[0])+posx/2-140,300,obj_dificuldade.nivel);
				draw_set_color(c_white);
			}else{
				draw_sprite(spr_pause,image_index,camera_get_view_x(view_camera[0])+posx/2-w, posy+h/2);	
			}
			
			draw_set_halign(fa_center);
			draw_set_font(fnt_pause);
			for(var i=0;i<array_length_1d(opcoes); i++){
				var sep= string_height(opcoes[0])+5;
				if(pause==i){
					c1=c_lime;	
				}else{
					c1=c_white;	
				}
				
				draw_set_color(c2);
				draw_text(camera_get_view_x(view_camera[0])+posx/2-140+2,posy+100/2+i*sep-2,opcoes[i]);	
				draw_set_color(c1);
				draw_text(camera_get_view_x(view_camera[0])+posx/2-140,posy+100/2+i*sep,opcoes[i]);	
			}
			if(keyboard_check_pressed(vk_up) || keyboard_check_pressed(vk_down)){
				audio_play_sound(snd_gun,5,0);		
			}
			







