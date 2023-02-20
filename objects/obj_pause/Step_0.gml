/// @description Insert description here
// You can write your code in this editor
var enter = keyboard_check_released(vk_enter);
if(room==rm_inicio){
	if(keyboard_check_pressed(vk_escape)){
		pause=!pause;	
	}
	
	if(pause){
		if(surf==0){
			surf=surface_create(view_get_wport(view_camera[0]),view_get_hport(view_camera[0]));	
			surface_set_target(surf);
			draw_clear_alpha(c_black,0);
			surface_copy(surf,0,0,application_surface);
			surface_reset_target();
		}
		
		
		instance_deactivate_all(true);
		audio_pause_sound(snd_zumbi);
		audio_pause_sound(snd_boss);
	}else{
		if(surf!=0){
			surface_free(surf);
			surf=0;
		}
		audio_resume_sound(snd_zumbi);
		audio_resume_sound(snd_boss);
		instance_activate_all();	
	}
	
	if(pause && enter){
		switch(pause_s){
			case 0:
					pause=!pause;
					pause_s=0;
			break;
		
			case 1:
				pause=!pause;
				pause_s=0;
				var trans = instance_create_layer(x,y,"tran",obj_tran);
				trans.rapido=true;
				trans.destino = rm_inicio;
			break;
		
			case 2:
				pause=!pause;
				pause_s=0;
				var trans = instance_create_layer(x,y,"tran",obj_tran);
				trans.rapido=true;
				trans.destino = rm_menu;
			break;
		
			case 3:
				pause=!pause;
				pause_s=0;
				game_end();
			break;
		
		}
	}
}
