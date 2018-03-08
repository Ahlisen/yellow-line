resigned = true;
state = ai_wait;
//portraitImage++;
color = c_gray;
audio_play_sound(soundResign, 0, false);

var surviving = instance_number(oVehicle);
for(var i = 0; i < instance_number(oVehicle); i++) {
    surviving -= instance_find(oVehicle,i).resigned;
}
if(surviving <= 1) {
    oNodeManager.nodeCount = 1;
}
