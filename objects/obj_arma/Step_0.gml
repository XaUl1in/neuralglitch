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

    // Atira
    if (mouse_check_button_pressed(mb_left)) {
        var bala = instance_create_layer(x, y, "Instances", obj_bala);
        bala.direction = angle_to_mouse;
    }
}
