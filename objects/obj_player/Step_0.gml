/// @description Insert description here
// You can write your code in this editor
var pulo, right,pulo_s,avanco_h;

right= true;
pulo = keyboard_check_pressed(vk_space);
pulo_s = keyboard_check_released(vk_space);


if(place_meeting(x,y+1,obj_bloco)){
	chao = true;	
}else{
	chao=false;	
}
if(chao){
	timer_pulo=limite_pulo;	
}else{ 
	if (timer_pulo>0){
		timer_pulo--;	
	}
}

if(chao){
	acel = acel_chao;	

}else{
	acel=acel_ar;

}

//max_velh = lerp(velh,max_velh,acel);

velh = lerp(velh,vel,acel);
switch(estado){
		
	case "movendo":
		
		//Aplicando gravidade caso nao esteja no chao
		if(!chao){
			velv+=grav;
			//sprite_index=spr_player_down;
		}else{
			sprite_index=spr_player;	
		}
		//Aplicando pulo
		/*if(pulo && chao){
			velv=-max_velv;	
			sprite_index=spr_player_jump;
			if(image_index>=image_number-1){
				image_index=image_number-1;	
			}
		}

		if(pulo_s && velv<0){
			velv*=.7;	
		}
		//Pulando atravez do buffer Pulo
				if(pulo){
					timer_queda=limite_buffer;	//Dando valor para o timer queda
				}
				if(timer_queda>0){				//Ativando o buffer caso timer queda for maior que zero
					buffer_pulo=true;	
				}else{							// Se for timer queda for menor que zero ele desativa o buffer
					buffer_pulo=false;	
				}
				if(buffer_pulo){ // Player pode pular com buffer
					if(chao || timer_pulo){
						velv=-max_velv;
						timer_pulo = 0; //Impedindo do player abusar do buffer do pulo
						timer_queda = 0 //Evitando de pular varias vezes no ar
					}
					
					timer_queda--; //Dimuindo o valor do timer_queda, para saber saber se vai aplicar ou não pulo atravez do buffer
				}
				
		velv = clamp(velv,-max_velv,max_velv);	
		*/
		//Estado atirando
		if(mouse_check_button(mb_left) && chao){
			sprite_index=spr_player_wait_fire;
			estado="atirando";	
		}
		
		//Estado acelerando
		if(keyboard_check(ord("A")) &&	chao){
			estado="acelerando";	
		}
		
		if(pulo && chao){
			estado="pulo";	
		}
		break;
		
		case "atirando":
		delay_tiro--;
		if(sprite_index==spr_player_wait_fire){
			if(image_index>image_number-1){
				//show_message("chegou auqi");
				//sprite_index=spr_player_fire;
				sprite_index=spr_player_move_teste;
				tiro=1;
			}
		}
		if(tiro && delay_tiro<0){
			instance_create_layer(x-14,y-19,"Instances",obj_tiro);	
			delay_tiro=room_speed/3.5;
		}
		if!(mouse_check_button(mb_left)){
				estado="movendo";	
			}
			
		if(pulo && chao){
			estado="pulo";	
		}
		
		if(keyboard_check(ord("A"))){
			estado="acelerando";	
		}
		break;
		
		
		case "acelerando":
			sprite_index=spr_player_run;
			tempo_acel=ativar_aceleracao;
			vel+=.012;
			if(image_index>=image_number-1){
				estado="movendo";	
			}
			
			if(chao && pulo){
				estado="pulo";
				image_index=0;
			}
		break;
		
		case "pulo":
		if(chao){
			velv=-max_velv;	
			sprite_index=spr_player_jump;
			if(image_index>=image_number-1){
				image_index=image_number-1;	
			}
		}

		if(pulo_s && velv<0){
			velv*=.7;	
		}
		//Pulando atravez do buffer Pulo
				if(pulo){
					timer_queda=limite_buffer;	//Dando valor para o timer queda
				}
				if(timer_queda>0){				//Ativando o buffer caso timer queda for maior que zero
					buffer_pulo=true;	
				}else{							// Se for timer queda for menor que zero ele desativa o buffer
					buffer_pulo=false;	
				}
				if(buffer_pulo){ // Player pode pular com buffer
					if(chao || timer_pulo){
						velv=-max_velv;
						timer_pulo = 0; //Impedindo do player abusar do buffer do pulo
						timer_queda = 0 //Evitando de pular varias vezes no ar
					}
					
					timer_queda--; //Dimuindo o valor do timer_queda, para saber saber se vai aplicar ou não pulo atravez do buffer
				}
				
		velv = clamp(velv,-max_velv,max_velv);	
		
		if(chao){
			estado="movendo";	
		}
		break;
		
		case "morte":
			sprite_index=spr_player_death;
			if(image_index>=image_number-1){
				image_index=11;
				
			}
			
			if(!chao){
				velv+=grav;
			}
				tempo_acel=-1;
				if(morte){
					morte=false;
					alarm[2]=room_speed*2;	
				}
		break;
}


if(place_meeting(x+300,y,obj_monster)){
	if(!instance_exists(obj_alert)){
		
		
		instance_create_layer(x-500,y-32,"diversos",obj_alert);
	}
}



if!(instance_exists(obj_balao)){
	tempo_acel--;
	if(tempo_acel<=0 && chao){
		vel-=.005;
	}	
}


vel = clamp(vel,0,4);


if(vida<=0 && estado!="morte"){
	morte = true;
	estado="morte";	
}

if(imune && espera_imune){
	espera_imune=false;
	alarm[1]=room_speed*2;
}	


	//show_debug_message(vel);
if(balao){
	if!(instance_exists(obj_balao)){
		instance_create_layer(x+12,y-40,"diversos",obj_balao);	
	}
}


show_debug_message(morte);