var alvo = instance_nearest(x, y, obj_player);

if (instance_exists(alvo)) {
    var dist = point_distance(x, y, alvo.x, alvo.y);

    if (dist > 4) {
        var dir = point_direction(x, y, alvo.x, alvo.y);
        x += lengthdir_x(zumbi_speed, dir);
        y += lengthdir_y(zumbi_speed, dir);
    }

    // Causar dano se encostar
    if (place_meeting(x, y, obj_player)) {
        alvo.vida -= dano;
    }
}
