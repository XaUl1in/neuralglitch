// Calcula vetor da colisão: do zumbi para o player
var dx = x - other.x;
var dy = y - other.y;

// Normaliza o vetor para ter comprimento 1
var dist = point_distance(x, y, other.x, other.y);
if (dist != 0) {
    dx /= dist;
    dy /= dist;
}

// Define a força do recuo (em pixels)
var knockback_strength = 30;

// Move o player para trás
x += dx * knockback_strength;
y += dy * knockback_strength;
