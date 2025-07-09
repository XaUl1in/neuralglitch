if (!is_collected) {
    // Verifica se o player está por perto
    var p = instance_nearest(x, y, obj_player);
    
    // Checa se ele está a uma distância aceitável
    if (p != noone && point_distance(x, y, p.x, p.y) < 32) {
        // Se o jogador APERTAR E enquanto estiver perto
        if (keyboard_check_pressed(ord("E"))) {
            is_collected = true;
            owner = p;
        }
    }
}
else if (instance_exists(owner)) {
    // Arma segue o player e aponta para o mouse
    var angle_to_mouse = point_direction(owner.x, owner.y, mouse_x, mouse_y);
    x = owner.x + lengthdir_x(offset_dist, angle_to_mouse);
    y = owner.y + lengthdir_y(offset_dist, angle_to_mouse);
    image_angle = angle_to_mouse;

    // --- SISTEMA DE RECARGA ---
    if (keyboard_check_pressed(ord("R")) && municao_atual < municao_max && municao_total > 0 && !esta_recarregando) {
        esta_recarregando = true;
        alarm[0] = tempo_recarga * room_speed; // Configura o alarme para recarga
    }

    // --- SISTEMA DE DISPARO ---
    if (shoot_cooldown > 0) {
        shoot_cooldown--; // Diminui o cooldown
    } else {
        can_shoot = true; // Libera o próximo tiro
    }

    // Disparo (com checagem de munição e recarga)
    if (mouse_check_button(mb_left) && can_shoot && municao_atual > 0 && !esta_recarregando) {
        var bala = instance_create_layer(x, y, "Instances", obj_bala);
        bala.direction = angle_to_mouse;
        
        // Atualiza munição e cooldown
        municao_atual--;
        can_shoot = false;
        shoot_cooldown = room_speed / firerate; // Ex: 60 FPS / 10 = 6 frames (0.1s)
    }
}