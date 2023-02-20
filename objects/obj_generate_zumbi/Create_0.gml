/// @description Insert description here
// You can write your code in this editor
global.cont=0;
global.total=0;
gerar_boss=false;
gerar_zumbi=true;
contador_monstro=0;
criar_monstro=true;
zumbi = 0;
distancia=0;
total=0;
timer=-1;
cont=0;
criar = true;
altura = 0;

if!(audio_is_playing(snd_zumbi)){
	audio_play_sound(snd_zumbi,1,1);
}