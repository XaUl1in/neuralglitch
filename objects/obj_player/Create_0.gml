player_speed = 1;
vida = 100;
has_gun = false;
persistent = true;

// Posicionamento inicial
if (!variable_global_exists("just_changed_room")) {
    global.just_changed_room = false;
}

if (instance_exists(obj_spawn_point)) {
    var spawn = instance_find(obj_spawn_point, 0);
    x = spawn.x;
    y = spawn.y;
}