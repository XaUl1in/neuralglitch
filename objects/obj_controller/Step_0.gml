timer += 1;

if (timer >= tempo_para_proximo_dia) {
    timer = 0;
    dia += 1;
}

// Verifica se ALT e ENTER foram pressionados juntos
var alt_pressed = keyboard_check(vk_alt);
var tab_pressed = keyboard_check_pressed(vk_enter); 

if (alt_pressed && tab_pressed) {
    window_set_fullscreen(!window_get_fullscreen()); // Alterna tela cheia
}
