///Sort vehicles (queue,ranking)
var queue = argument0;
var ranking = argument1;

ds_list_clear(ranking);

for(var i = 0; i < instance_number(oVehicle); i++) {
    var car = instance_find(oVehicle, i);
    if(!car.resigned) {
        ds_priority_add(queue, car, point_distance(car.x,car.y,oNodeManager.active.x,oNodeManager.active.y));
    }
}

for(var i = 0; i < ds_priority_size(queue); i++) {
    ds_list_add(ranking,ds_priority_delete_min(queue));
}

return ranking;

