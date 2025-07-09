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

// numeracao e informacao item
enum Item_Armas{
	Arma,
}

enum Infos{
	Item,
	Quantidade,
	Altura,
}

grid_itens = ds_grid_create(Infos.Altura, total_slots);
ds_grid_set_region(grid_itens, 0, 0, 1, total_slots - 1, -1);

// Primeiro Slot
grid_itens[# Infos.Item, 0] = Item_Armas.Arma
grid_itens[# Infos.Quantidade, 0] = 1;
// Segundo Slot
grid_itens[# Infos.Item, 1] = Item_Armas.Arma
grid_itens[# Infos.Quantidade, 1] = 1;
// Terceiro Slot
grid_itens[# Infos.Item, 2] = Item_Armas.Arma
grid_itens[# Infos.Quantidade, 2] = 1;
// Quarto Slot
grid_itens[# Infos.Item, 3] = Item_Armas.Arma
grid_itens[# Infos.Quantidade, 3] = 1;
// Quinto Slot
grid_itens[# Infos.Item, 4] = Item_Armas.Arma
grid_itens[# Infos.Quantidade, 4] = 1;
// Sexto Slot
grid_itens[# Infos.Item, 5] = Item_Armas.Arma
grid_itens[# Infos.Quantidade, 5] = 1;