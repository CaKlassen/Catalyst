//kills the player

if (instance_exists(objPlayer) && !global.noDeath)
{
    if (global.gameStarted)
    {
        audio_play_sound(sndDeath,0,0);
        
        if (!global.muteMusic)  //play death music
        {
            if (global.deathMusicMode == 1) //instantly pause the current music
            {
                audio_pause_sound(global.currentMusic);
                global.gameOverMusic = audio_play_sound(musOnDeath,1,0);
            }
            else if (global.deathMusicMode == 2)    //fade out the current music
            {                
                with (objWorld)
                    event_user(0);  //fades out and stops the current music
                
                global.gameOverMusic = audio_play_sound(musOnDeath,1,0);
            }
        }
        
        with (objPlayer)
        {
            instance_create(x,y,objBloodEmitter);
            instance_destroy();
        }
        
        instance_create(0,0,objGameOver);
        
        global.death++; //increment deaths
            
        scrSaveGame(0); //save death/time
    }
    else
    {
        with(objPlayer)
            instance_destroy();
        
        global.player_djump = 1;
        global.player_xscale = 1;
            
        room_restart();
    }
}