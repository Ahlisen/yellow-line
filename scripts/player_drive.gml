controller_input(player);

if (inputHorizontal != 0 || inputVertical != 0) {
    var steerDirection = point_direction(0,0,inputHorizontal,inputVertical);
    var diff = angle_difference(-steerDirection, phy_rotation);
    physics_apply_torque(((1-boost)*10*diff-phy_angular_velocity)*steer);
    
    //Fun to have
    //steerDirection = radtodeg(-arctan2(phy_speed_y,phy_speed_x));
}
/*
if ((inputHorizontalAim != 0 || inputVerticalAim != 0) && missiles > 0) {
    var aimDirection = point_direction(0,0,inputHorizontalAim,inputVerticalAim);
    var aimForce = min(1,abs(inputHorizontalAim)+abs(inputVerticalAim));
    targetReticleOffsetX += lengthdir_x(aimForce,aimDirection);
    targetReticleOffsetY += lengthdir_y(aimForce,aimDirection);
}
*/
if(inputX && missiles > 0) {
    if(targetIndex < ds_list_size(oCamera.ranking)-1) {
        targetIndex++;
    } else {
        targetIndex = 0;
    }
    var possibleTarget = ds_list_find_value(oCamera.ranking,targetIndex);
    if(possibleTarget != id) {
        targetVehicle = possibleTarget;
        targetReticleOffsetX = x - targetVehicle.x;
        targetReticleOffsetY = y - targetVehicle.y;
        audio_play_sound(soundTargetGet, 0, false);
    } else {
        targetVehicle = noone;
    }
}

if (inputShoulderTriggerValueRight) {
    var force = 2*boost+(acceleration*inputShoulderTriggerValueRight)/(0.5+0.5*gear);
    horizontalSpeed = lengthdir_x(force,-phy_rotation);
    verticalSpeed = lengthdir_y(force,-phy_rotation);
    physics_apply_impulse(phy_position_x,phy_position_y, horizontalSpeed, verticalSpeed);
    
    
    //audio_sound_pitch(soundEngine, 0.5+inputShoulderTriggerValueRight+boost);
    //audio_sound_gain(soundEngine,1+inputShoulderTriggerValue*0.5, 0)
}

if(inputShoulderTriggerValueLeft) {
    phy_linear_damping = resistance*inputShoulderTriggerValueLeft;
} else {
    phy_linear_damping = phy_speed/(3*gear+boost); //used to be resistance/gear+boost
}

if(inputShoulderR) {
    if(gear < gearMax) {
        gear++;
    }
}

if(inputShoulderL) {
    if(gear > 1) {
        gear--;
    }
}

if(inputA) {
    fire_boost();
}

if(inputB && targetVehicle) {
    fire_missile(targetVehicle);
    targetVehicle = noone;
}
    
