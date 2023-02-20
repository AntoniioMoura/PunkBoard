/// @description Insert description here
// You can write your code in this editor
if!(rapido){
	if!(escuro){
		alpha+=.02;	
	}else{
		alpha-=.02;	
	}
}else{
	if!(escuro){
		alpha+=.05;	
	}else{
		alpha-=.05;	
	}
}
if(alpha>=1 &&	!escuro){
	room_goto(destino);
}