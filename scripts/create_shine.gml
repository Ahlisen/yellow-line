///create_shine(length, direction)
var shine = instance_create(x,y,oShine);
shine.owner = id;
shine.length = argument0;
shine.angle = argument1;
shine.x = x+lengthdir_x(shine.length,shine.angle-phy_rotation);
shine.y = shine.height+y+lengthdir_y(shine.length,shine.angle-phy_rotation);
