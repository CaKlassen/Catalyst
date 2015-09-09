//set default config settings and save them

global.leftbutton = vk_left;
global.rightbutton = vk_right;
global.upbutton = vk_up;
global.downbutton = vk_down;
global.jumpbutton = vk_shift;
global.shotbutton = ord("Z");
global.restartbutton = ord("R");
global.skipbutton = ord("S");
global.suicidebutton = ord("Q");
global.pausebutton = ord("P");
global.aAlignButton = ord("A");
global.dAlignButton = ord("D");
global.muteMusic = false;

global.volumeLevel = 100;
audio_master_gain(global.volumeLevel/100);

global.fullscreenMode = false;
window_set_fullscreen(global.fullscreenMode);
with (objWorld)
    alarm[0] = 1; //set texture interpolation (have to delay it by a frame for some reason or else it won't get set)

scrSaveConfig();