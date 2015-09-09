if ((place_meeting(floor(x),round(y+(global.grav)),objBlock) && place_meeting(ceil(x),round(y+(global.grav)),objBlock)) || onPlatform || place_meeting(x,round(y+(global.grav)),objWater))
{
    vspeed = -jump;
    djump = 1;
    audio_play_sound(sndJump,0,0);
}
else if (djump == true || place_meeting(x,round(y+(global.grav)),objWater2))
{
    vspeed = -jump2;
    sprite_index = sprPlayerJump;
    audio_play_sound(sndDJump,0,0);
    
    if (!place_meeting(x,round(y+(global.grav)),objWater3))   //check if player is touching water3 so that djump isn't taken away
        djump = 0;
}