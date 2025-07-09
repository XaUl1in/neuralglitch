inventario = false;
escala = 2;

comeco_x = 54 * escala;
comeco_y = 53 * escala;

slots_h = 2;
slots_v = 3;
total_slots = slots_h * slots_v;
tamanho_slot = 50 * escala;
buffer = 2 * escala;

inventario_l = sprite_get_width(spr_inventario) * escala;
inventario_a = sprite_get_height(spr_inventario) * escala;