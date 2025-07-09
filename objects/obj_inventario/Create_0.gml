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

item_selecionado = -1;
pos_selecionada = -1;

enum Armas{
	Arma,	
}

enum Infos{
	Item,
	Altura
}

grid_itens = ds_grid_create(Infos.Altura, total_slots);
ds_grid_set_region(grid_itens, 0, 0, 1, total_slots - 1, -1);

// Primeiro Slot
grid_itens[# Infos.Item, 0] = Armas.Arma;
// Segundo Slot
grid_itens[# Infos.Item, 1] = Armas.Arma;
// Terceiro Slot
grid_itens[# Infos.Item, 2] = Armas.Arma;
// Quarto Slot
grid_itens[# Infos.Item, 3] = Armas.Arma;
// Quinto Slot
grid_itens[# Infos.Item, 4] = Armas.Arma;
// Sexto Slot
