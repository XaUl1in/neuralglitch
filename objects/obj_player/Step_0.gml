// Movimento vertical
var up = keyboard_check(ord("W")) || keyboard_check(vk_up);
var down = keyboard_check(ord("S")) || keyboard_check(vk_down);
var mov_y = down - up;

// Movimento horizontal
var right = keyboard_check(ord("D")) || keyboard_check(vk_right);
var left = keyboard_check(ord("A")) || keyboard_check(vk_left);
var mov_x = right - left;

// Aplicar movimento
x += mov_x * player_speed;
y += mov_y * player_speed;

// Verificação de vida
if (vida <= 0) {
    instance_destroy();
}

// Disparo
if (has_gun && mouse_check_button_pressed(mb_left)) {
    var bala = instance_create_layer(obj_arma.x, obj_arma.y, "Instances", obj_bala);
    bala.direction = point_direction(obj_arma.x, obj_arma.y, mouse_x, mouse_y);
}

// Sistema de reposicionamento em novas rooms (SEM usar room_first)
if (variable_global_exists("just_changed_room") && global.just_changed_room) {
    global.just_changed_room = false;
    if (instance_exists(obj_spawn_point)) {
        var spawn = instance_find(obj_spawn_point, 0);
        x = spawn.x;
        y = spawn.y;
    }
}