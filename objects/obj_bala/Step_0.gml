if (x < 0 || x > room_width || y < 0 || y > room_height) {
    instance_destroy();
}

image_angle = direction; // Garante que o sprite sempre aponte na direção certa