/// @description Insert description here
// You can write your code in this editor
randomize();
altura = irandom_range(-15,15);
if(global.cont<40 && gerar_zumbi) {
	timer--;
	if(timer<0 && criar){
		zumbi = irandom(20);
		if(zumbi>10){
			instance_create_layer(obj_player.x-210,576+altura,"monster",obj_zumbi1);
		}else{
			instance_create_layer(obj_player.x-210,576+altura,"monster",obj_zumbi3);
		}
		criar=false;
		global.cont++;
		//show_message("criou");
		//show_debug_message("criou");
		alarm[0]=room_speed/4;
		//show_debug_message(zumbi);
	}
}



if(criar_monstro && contador_monstro<50){
	criar_monstro=false;
	if(gerar_zumbi){
		alarm[1]=room_speed*(irandom_range(1,5));
	}
}


if(gerar_boss){
	gerar_zumbi=false;
	gerar_boss=false;
	instance_create_layer(obj_player.x-310,576,"monster",obj_boss);	
}


