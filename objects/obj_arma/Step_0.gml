if (is_collected && instance_exists(owner)) {
    // Posiciona a arma seguindo o mouse
    var angle_to_mouse = point_direction(owner.x, owner.y, mouse_x, mouse_y);

    x = owner.x + lengthdir_x(offset_dist, angle_to_mouse);
    y = owner.y + lengthdir_y(offset_dist, angle_to_mouse);

    image_angle = angle_to_mouse;

    // === TIRO ===
    if (mouse_check_button_pressed(mb_left)) {
        var bala = instance_create_layer(x, y, "Instances", obj_bala);
        bala.direction = angle_to_mouse;
    }
}
