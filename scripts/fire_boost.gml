///Fire_boost()
if (boost == 0 && !prepareBoost && boosts > 0) {
    prepareBoost = true;
    alarm[0] = room_speed;
    boosts--;
    audio_play_sound(soundBoostPreparation, 0, false);
}
