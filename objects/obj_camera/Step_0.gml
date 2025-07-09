if (instance_exists(target)) {
    var cam_x = target.x - view_w / 2;
    var cam_y = target.y - view_h / 2;

    if (shake_timer > 0) {
        shake_timer--;
        cam_x += random_range(-shake_strength, shake_strength);
        cam_y += random_range(-shake_strength, shake_strength);
    }

    camera_set_view_pos(view_camera[0], cam_x, cam_y);
}
