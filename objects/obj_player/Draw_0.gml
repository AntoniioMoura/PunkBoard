/// @description Insert description here
// You can write your code in this editor
draw_self();
if(imune){
	if(cont==1){
		draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_red,1);	
		cont=2;
	}else{
		draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,1);	
		cont=1;
	}
}

