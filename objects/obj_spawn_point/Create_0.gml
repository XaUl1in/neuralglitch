// No Create Event do obj_player:
persistent = true;

// Encontra o spawn point mais próximo
var spawn = instance_nearest(x, y, obj_spawn_point);
if (instance_exists(spawn)) {
    x = spawn.x;
    y = spawn.y;
}