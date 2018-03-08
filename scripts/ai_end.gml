///ai_drive(acceleration, steer, )
var acceleration = argument0;
var steering = argument1;

//Choose target and direction
var tar = oNodeManager.last;
var steerDirection = point_direction(x,y,tar.x+offsetX,tar.y+offsetY);

//Rotate car
var diff = angle_difference(-steerDirection, phy_rotation);
physics_apply_torque((1-boost)*(10*diff-phy_angular_velocity)*steering);

//Create forces and apply to vehicle
var horizontalSpeed = lengthdir_x(acceleration,-phy_rotation) - phy_speed_x*0.1;
var verticalSpeed = lengthdir_y(acceleration,-phy_rotation) - phy_speed_y*0.1;
physics_apply_impulse(phy_position_x,phy_position_y, horizontalSpeed, verticalSpeed);

return tar;
