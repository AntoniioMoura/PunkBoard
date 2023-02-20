/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_pontos);
for(var i=1; i<=obj_player.vida;i++){
	var tamanho_life=sprite_get_width(spr_life);
	draw_sprite(spr_life,1,camera_get_view_x(view_camera[0])+tamanho_life*i+(2*i)+8,camera_get_view_y(view_camera[0])+10);
}

if(obj_generate_zumbi.gerar_zumbi){
	draw_text(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])-90,camera_get_view_y(view_camera[0])+20,global.total);
	draw_text(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])-60,camera_get_view_y(view_camera[0])+20,"/");
	draw_text(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])-30,camera_get_view_y(view_camera[0])+20,obj_dificuldade.quantidade);
}
