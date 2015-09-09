//plays a song if it's not already playing
//argument0 - song to play (-1 plays nothing and stops anything currently playing)
//argument1 - whether or not to loop the song

if (!global.muteMusic)  //check if music is supposed to be muted
{
    if (global.currentMusicID != argument0)  //checks if the song to play is already playing
    {
        global.currentMusicID = argument0;
        
        audio_stop_sound(global.currentMusic);
        
        if (argument0 != -1)
            global.currentMusic = audio_play_sound(global.currentMusicID,1,argument1);
    }
}