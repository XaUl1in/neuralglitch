// Evento Step

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
    instance_destroy(); // Ou vá para a tela de game over
}

//so atira se tiver arma
if (has_gun && mouse_check_button_pressed(mb_left)) {
    var bala = instance_create_layer(obj_arma.x, obj_arma.y, "Instances", obj_bala);
    bala.direction = point_direction(obj_arma.x, obj_arma.y, mouse_x, mouse_y);
}