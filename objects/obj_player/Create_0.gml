/// @description Insert description here
// You can write your code in this editor
instance_create_layer(x,y,"instances",obj_camera);
delay_tiro=0;
imune=false;
morte = false;
balao = false;
cont=1;
espera_imune=false;
vida = obj_dificuldade.vida_player;
teste = 10;
timer=3;
tempo_acel=room_speed*6;
acelerar = false;
desaceleracao=true;
ativar_aceleracao = obj_dificuldade.aceleracao;
tiro = 0;
velv=0;
velh=0;
vel = 4;
xscale= 1;
yscale=1;
grav = .4;
max_velh = 3;
max_velv = 6;
chao =0;
estado = "movendo"; 

acel_chao = .2;
acel_ar = .1;
acel = acel_chao;


//Configurando bonus para pular
limite_pulo =3;
timer_pulo = 0;

//Configurando buffer do pulo
limite_buffer = 6;
timer_queda = 0;
buffer_pulo = false;

if(!audio_is_playing(snd_bg) && !obj_mcpoze.mcpoze){
	audio_play_sound(snd_bg,5,1);
}

if(!audio_is_playing(snd_mcpoze) && obj_mcpoze.mcpoze){
	audio_play_sound(snd_mcpoze,5,1);
}
