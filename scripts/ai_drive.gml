///ai_drive(acceleration, steer, target)
var acceleration = argument0;
var steering = argument1;
var target = argument2;

//Choose direction
var steerDirection = point_direction(x,y,target.x+offsetX,target.y+offsetY);

//Rotate car
var diff = angle_difference(-steerDirection, phy_rotation);
physics_apply_torque((1-boost)*(10*diff-phy_angular_velocity)*steering);

//Create forces and apply to vehicle
var force = 2*boost+(acceleration)/(0.5+0.5*gear);
var horizontalSpeed = lengthdir_x(force,-phy_rotation) - phy_speed_x*0.1;
var verticalSpeed = lengthdir_y(force,-phy_rotation) - phy_speed_y*0.1;
physics_apply_impulse(phy_position_x,phy_position_y, horizontalSpeed, verticalSpeed);

//Set resistance
phy_linear_damping = phy_speed/(3*gear+boost);

return target;

