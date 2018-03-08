///draw_self_3D(shake,z)
var xShake = random_range(-argument0,argument0);
var yShake = random_range(-argument0,argument0);
var z = argument1;

for(var i = 0; i<image_number; i++) {
    draw_sprite_ext(sprite_index,i,
    x+xShake*(i+1),y-i+yShake*(i+1)-sign(i)*z,
    x_scale,image_yscale,image_angle,
    image_blend,image_alpha)
}
