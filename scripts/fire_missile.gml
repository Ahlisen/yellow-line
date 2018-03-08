///fire_missile(target)
if (missiles > 0) {
    var missile = instance_create(x,y,oMissileStraight);
    missile.target = argument0;
    missile.phy_speed_x = phy_speed_x*1.1;
    missile.phy_speed_y = phy_speed_y*1.1;
    missile.color = color;
    missile.image_blend = color;
    missiles--;
    audio_play_sound(soundMissile, 0, false);
}
