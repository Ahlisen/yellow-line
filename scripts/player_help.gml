var tar = ai_drive(catchUpAcceleration,steer,target);

if(distance_to_point(tar.x,tar.y) < oNodeManager.detectionRange) {
    image_blend = c_white;
    state = player_drive;
}
