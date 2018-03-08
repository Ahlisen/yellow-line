///create_exhaust_fumes(hForce,vForce,color)
var hForce = argument0;
var vForce = argument1;
var color = argument2;

var _x = lengthdir_x(exhaustLength,exhaustDirection-phy_rotation);
var _y = lengthdir_y(exhaustLength,exhaustDirection-phy_rotation);

var fume = instance_create(x+_x,y+_y,oFumes);
fume.depth = depth+2;
fume.phy_rotation = -radtodeg(-arctan2(phy_speed_y,phy_speed_x))+random(2)-1;
fume.phy_fixed_rotation = true;
fume.hue = colour_get_hue(color);
fume.sat = colour_get_saturation(color);
fume.val = colour_get_value(color);
fume.image_blend = make_colour_hsv(fume.hue,fume.sat,fume.val)

with(fume) {
    var multx = 1//;
    var multy = 1//irandom(2)-1;
    physics_apply_impulse(x,y,hForce*multx,vForce*multy)
}

