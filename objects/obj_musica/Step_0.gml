/// @description Insert description here
// You can write your code in this editor
if(room==rm_menu || room==rm_dificuldade){
	if!(audio_is_playing(snd_menu)){
		audio_play_sound(snd_menu,1,1);
	}
}