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