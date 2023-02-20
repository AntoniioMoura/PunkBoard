/// @description Insert description here
// You can write your code in this editor
if(room==rm_tutorial){
	var trans = instance_create_layer(x,y,"Instances",obj_tran);
	trans.destino = rm_sinopse;
}

if(room==rm_sinopse){
	var trans = instance_create_layer(x,y,"Instances",obj_tran);
	trans.destino = rm_inicio;	
}