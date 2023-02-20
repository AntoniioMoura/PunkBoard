if!(instance_exists(obj_pause)){
	instance_create_layer(0,0,"tran",obj_pause);
}

audio_stop_sound(snd_menu);
audio_stop_sound(snd_boss);