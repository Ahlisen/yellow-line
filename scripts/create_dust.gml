if(phy_speed > 1) {
    var dir = irandom(4)-2-phy_rotation;
    var _x = lengthdir_x(-irandom(6)-2,dir);
    var _y = lengthdir_y(-irandom(6)-2,dir);
    var dust = instance_create(x+_x,y+_y,oCloud);
    
    dust.depth = depth-_y;
}
