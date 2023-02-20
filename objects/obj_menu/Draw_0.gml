/// @description Insert description here
// You can write your code in this editor
if(room!=rm_inicio){
	if(keyboard_check_pressed(vk_up) || keyboard_check_pressed(vk_down)){
		audio_play_sound(snd_gun,5,0);		
	}
}

if(room == rm_menu){
	draw_set_font(fnt_principal1);
	draw_set_halign(fa_center);
	var numero = array_length_1d(opcoes);
	var h = 68;
	
	if(keyboard_check_pressed(vk_up)){
		if(sel>0){
			sel--;	
		}else{
			sel=numero-1;	
		}
	}
	if(keyboard_check_pressed(vk_down)){
		if(sel<numero-1){
			sel++;
		}else{
			sel=0;	
		}
	}
	
	for(var i=0; i<numero; i++){
		
	//mudando as cores
		if(sel==i){
			cor = c_white;
			cor2 = c_black;
			draw_set_font(fnt_principal1);
		}else{
			cor=c_lime;
			cor2=c_black;
			draw_set_font(fnt_principal);
		}
		//Dsenhando sombra
		draw_set_color(cor2);
		draw_text(room_width/4+3,room_height/1.5+i*h+3,opcoes[i]);
		
		//Desenhando texto
		draw_set_color(cor);
		draw_text(room_width/4,room_height/1.5+i*h,opcoes[i]);
	
	}
}

if(room == rm_dificuldade){
	draw_set_halign(fa_center);
	var numero = array_length_1d(dificuldade);
	var h = 68;
	
	if(keyboard_check_pressed(vk_up)){
		if(sel_difi>0){
			sel_difi--;	
		}else{
			sel_difi=numero-1;	
		}
	}
	if(keyboard_check_pressed(vk_down)){
		if(sel_difi<numero-1){
			sel_difi++;
		}else{
			sel_difi=0;	
		}
	}
	
	for(var i=0; i<numero; i++){
		
	//mudando as cores
		if(sel_difi==i){
			cor = c_white;
			cor2 = c_black;
			draw_set_font(fnt_principal1);
		}else{
			cor=c_lime;
			cor2=c_black;
			draw_set_font(fnt_principal);
		}
		//Dsenhando sombra
		draw_set_color(cor2);
		draw_text(room_width/4+3,room_height/1.5+i*h+3,dificuldade[i]);
		
		//Desenhando texto
		draw_set_color(cor);
		draw_text(room_width/4,room_height/1.5+i*h,dificuldade[i]);
	
	}
}
