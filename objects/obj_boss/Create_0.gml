/// @description Insert description here
// You can write your code in this editor
vida = obj_dificuldade.vida_boss;
max_vida = obj_dificuldade.vida_boss;
cont=1;
turbo = true;
acel = .1;
velh=0;
vel = 3.4;
valor = irandom_range(50,150);
image_index=random(image_number);
morrendo = false;
atirar=true;
if!(audio_is_playing(snd_boss)){
	audio_play_sound(snd_boss,1,1);
}
alarm[1]=room_speed;