// Evento Step
var mov_y = keyboard_check(ord("S")) - keyboard_check(ord("W"));
var mov_x = keyboard_check(ord("D")) - keyboard_check(ord("A"));

x += mov_x * player_speed;
y += mov_y * player_speed;

//verificação de vida
if (vida <= 0) {
    instance_destroy(); // Ou você pode fazer ir pra tela de game over
}
