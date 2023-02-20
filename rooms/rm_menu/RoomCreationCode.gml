var base_w = 1024;
var base_h = 768;
var max_w = display_get_width();
var max_h = display_get_height();
var aspect = display_get_width() / display_get_height();
if (max_w < max_h)
    {
    // portait
     var VIEW_WIDTH = min(base_w, max_w);
    var VIEW_HEIGHT = VIEW_WIDTH / aspect;
    }
else
    {
    // landscape
    var VIEW_HEIGHT = min(base_h, max_h);
    var VIEW_WIDTH = VIEW_HEIGHT * aspect;
    }
view_wport[0] = max_w;
view_hport[0] = max_h;
surface_resize(application_surface, view_wport[0], view_hport[0]);
if!(instance_exists(obj_menu)){
	instance_create_layer(x,y,"Instances", obj_menu);	
}

if!(instance_exists(obj_musica)){
	instance_create_layer(0,0,"Instances",obj_musica);
}
audio_stop_sound(snd_bg);
audio_stop_sound(snd_zumbi);
audio_stop_sound(snd_boss);
audio_stop_sound(snd_mcpoze);
if(!instance_exists(obj_titulo)){
	instance_create_layer(0,32,"Instances",obj_titulo);
}

