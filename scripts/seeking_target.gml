///Seek target (force, steer, target)
var force = argument0;
var steer = argument1;
var target = argument2;

if(target) {
    var desiredAngle = point_direction(x,y,target.x,target.y);
    var distance = point_distance(x,y,target.x,target.y);
    var totalForce = force*force*distance;
    var desiredX = lengthdir_x(totalForce,desiredAngle);
    var desiredY = lengthdir_y(totalForce,desiredAngle);
    
    var steerX = desiredX - (phy_speed_x-target.phy_speed_x)*steer;
    var steerY = desiredY - (phy_speed_y-target.phy_speed_y)*steer;
    
    physics_apply_impulse(phy_position_x,phy_position_y,steerX,steerY);
    phy_rotation = -radtodeg(-arctan2(phy_speed_y,phy_speed_x));
}
