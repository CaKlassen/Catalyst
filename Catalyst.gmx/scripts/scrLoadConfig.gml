//loads config settings

var f;
f = file_bin_open(working_directory+"\Data\config",0);

global.leftbutton = file_bin_read_byte(f);
global.rightbutton = file_bin_read_byte(f);
global.upbutton = file_bin_read_byte(f);
global.downbutton = file_bin_read_byte(f);
global.jumpbutton = file_bin_read_byte(f);
global.shotbutton = file_bin_read_byte(f);
global.restartbutton = file_bin_read_byte(f);
global.skipbutton = file_bin_read_byte(f);
global.suicidebutton = file_bin_read_byte(f);
global.pausebutton = file_bin_read_byte(f);
global.aAlignButton = file_bin_read_byte(f);
global.dAlignButton = file_bin_read_byte(f);
global.muteMusic = file_bin_read_byte(f);

global.volumeLevel = file_bin_read_byte(f);
audio_master_gain(global.volumeLevel/100);

global.fullscreenMode = file_bin_read_byte(f);
window_set_fullscreen(global.fullscreenMode);
with (objWorld)
    alarm[0] = 1; //set texture interpolation (have to delay it by a frame for some reason or else it won't get set)

file_bin_close(f);