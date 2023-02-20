/// @description Insert description here
// You can write your code in this editor
if(room==rm_menu){
	var enter = keyboard_check_released(vk_enter);
	if(enter && !escolha){
		escolha = true;
		switch(sel){
			case 0: var trans = instance_create_layer(x,y,"tran",obj_tran);
				trans.destino = rm_dificuldade;
			break;
		
			case 1:	
				var trans = instance_create_layer(x,y,"tran",obj_tran);
				trans.destino = rm_credito;
			break;
		
			case 2: game_end();
			break;
		}
	}
}

if(room==rm_dificuldade){
	var enter = keyboard_check_released(vk_enter);
	if(keyboard_check_pressed(vk_escape)){
		var trans = instance_create_layer(x,y,"tran",obj_tran);
		trans.destino = rm_menu;
	}
	if(enter && !escolha){
		escolha = true;
		switch(sel_difi){
			case 0: 
				var trans = instance_create_layer(x,y,"tran",obj_tran);
				if(obj_dificuldade.tutorial){
					trans.destino = rm_tutorial;	
				}else{
					trans.destino = rm_inicio;	
				}
				obj_dificuldade.nivel="Fácil";
				sel=0;
				obj_dificuldade.quantidade = 50;
				obj_dificuldade.vida=1;
				obj_dificuldade.vida_boss=30;
				obj_dificuldade.vida_player=5;
				obj_dificuldade.aceleracao=room_speed*6;
			break;
		
			case 1:	
			var trans = instance_create_layer(x,y,"tran",obj_tran);
				if(obj_dificuldade.tutorial){
					trans.destino = rm_tutorial;	
				}else{
					trans.destino = rm_inicio;	
				}
				obj_dificuldade.nivel="Normal";
				sel=0;
				obj_dificuldade.quantidade = 100;
				obj_dificuldade.vida=2;	
				obj_dificuldade.vida_boss=50;
				obj_dificuldade.vida_player=4;
				obj_dificuldade.aceleracao=room_speed*5;
			break;
		
			case 2:
				var trans = instance_create_layer(x,y,"tran",obj_tran);
				sel=0;
				if(obj_dificuldade.tutorial){
					trans.destino = rm_tutorial;	
				}else{
					trans.destino = rm_inicio;	
				}
				obj_dificuldade.nivel="Dificil";	
				obj_dificuldade.quantidade = 200;
				obj_dificuldade.vida=3;
				obj_dificuldade.vida_boss=100;
				obj_dificuldade.vida_player=3;
				obj_dificuldade.aceleracao=room_speed*4;
			break;
			
			case 3:
				var trans = instance_create_layer(x,y,"tran",obj_tran);
				if(obj_dificuldade.tutorial){
					trans.destino = rm_tutorial;	
				}else{
					trans.destino = rm_inicio;	
				}		
				obj_dificuldade.nivel="Num vai da não";
				sel=0;;
				obj_dificuldade.quantidade = 500;
				obj_dificuldade.vida=4;
				obj_dificuldade.vida_boss=200;
				obj_dificuldade.vida_player=1;
				obj_dificuldade.aceleracao=room_speed*3;
			break;
		}
	
	}
}


