/// @description Insert description here
// You can write your code in this editor
repeat(abs(velh)){
	//Subindo rampa
	if(place_meeting(x+sign(velh),y,obj_bloco) && !place_meeting(x+sign(velh),y-1,obj_bloco)){
		y--;
	}
	
	//Descendo rampa
	if(!place_meeting(x+sign(velh),y,obj_bloco) && !place_meeting(x+sign(velh),y+1,obj_bloco) && place_meeting(x+sign(velh),y+2,obj_bloco)){
		y++;	
	}
	if(!place_meeting(x+sign(velh),y,obj_bloco)){
		x+=sign(velh);	
	}else{
		velh=0;
		break;
	}
	
	
}
//Colisão verticaç
repeat(abs(velv)){
	if(!place_meeting(x,y+sign(velv),obj_bloco)){
			y+=sign(velv);
		}else{
			velv=0;
			break;
		}
}
/*
//----------Adicionando colisão horizontal
if(place_meeting(x+velh,y,obj_bloco)){
	while(!place_meeting(x+sign(velh),y,obj_bloco)){
		x+=sign(velh);	
	}
	velh=0;
}

//----------Adicionando colisão vertical
if(place_meeting(x,y+velv,obj_bloco)){
	while(!place_meeting(x,y+sign(velv),obj_bloco)){
		y+=sign(velv);	
	}
	velv=0;
}


//Adicionando aceleração no X e Y
x+=velh;
y+=velv;
//Limitando o X do player para que ele nao possa sair da room pelas laterais

//x = clamp(x,0+sprite_width/2, room_width-sprite_width/2);
//y = clamp(y,0+sprite_height/2, room_height-sprite_height/2);