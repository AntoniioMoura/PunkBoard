/// @description Insert description here
// You can write your code in this editor

//Possibilitando os sons do jogo
//Distancia pra tocar o som
//audio_falloff_set_model(audio_falloff_exponent_distance);
vel = .1;
cam = view_camera[0];
alvo=obj_player;
view_w_half = camera_get_view_width(cam) *0.5;
view_h_half = camera_get_view_height(cam) *0.5;
instance_create_layer(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),"Instances",obj_vel);