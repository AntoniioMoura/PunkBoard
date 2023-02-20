/// @description Insert description here
// You can write your code in this editor
enter = keyboard_check_pressed(vk_enter);
if(instance_exists(obj_balao)){
	existe = obj_balao.fim;	
}
if(room==rm_inicio && (obj_player.estado=="morte" || existe)){
	if(enter){
		switch(pause){
			case 0:
				var trans = instance_create_layer(x,y,"tran",obj_tran);
				trans.rapido=true;
				trans.destino = rm_inicio;
			break;
		
			case 1:
				var trans = instance_create_layer(x,y,"tran",obj_tran);
				trans.rapido=true;
				trans.destino = rm_menu;
			break;
		
			case 2:
				game_end();
			break;
		
		}
	}		
}