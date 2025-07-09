var _guil = display_get_gui_width();
var _guia = display_get_gui_height();

var _mx = device_mouse_x_to_gui(0);
var _my = device_mouse_y_to_gui(0);

if inventario == true {
	var _invx = _guil/2 - inventario_l/2;
	var _invy = _guia/2 - inventario_a/2;
	
	draw_sprite_ext(spr_inventario, 0, _invx, _invy, escala, escala, 0, c_white, 1);

	var ix = 0;
	var iy = 0;
	for (var i = 0; i < total_slots; i++) {
		
		var _slotsx = _invx + comeco_x + ((tamanho_slot + buffer) * ix);
		var _slotsy = _invy + comeco_y + ((tamanho_slot + buffer) * iy);
		
		if point_in_rectangle(_mx, _my, _slotsx, _slotsy, _slotsx + tamanho_slot, _slotsy + tamanho_slot){
			draw_sprite_ext(spr_seletorinventario, 0, _slotsx, _slotsy, escala, escala, 0, c_white, 1);	
			
			if mouse_check_button_pressed(mb_left){
				// Caso não tenha nenhum item selecionado
				if item_selecionado == -1{
					item_selecionado = grid_itens[# Infos.Item, i];
					pos_selecionada = i;
				} //Caso já tenha selecionado um item 
				else{
					// 1 Caso - Item vazio
					if grid_itens[# Infos.Item, i] == -1 {
						grid_itens[# Infos.Item, i] = grid_itens[# Infos.Item, pos_selecionada];
						
						grid_itens[# Infos.Item, pos_selecionada] = -1;
						item_selecionado = -1;
						pos_selecionada = -1; 
					}
					// 2 Caso - Já tem um item, vai trocar posição
					else if grid_itens[# Infos.Item, pos_selecionada] != grid_itens[# Infos.Item, i]{
						var _item = grid_itens[# Infos.Item, i];
						
						grid_itens[# Infos.Item, i] = grid_itens[# Infos.Item, pos_selecionada];
						
						grid_itens[# Infos.Item, pos_selecionada] = _item;
						
						item_selecionado = -1;
						pos_selecionada = -1; 
					}
				}
			}
		}
		
		// Checar se tem item no slot
		if grid_itens[# Infos.Item, i] != -1{
			// Sprite
			draw_sprite_ext(spr_inventario_arma, grid_itens[# 0, i], _slotsx, _slotsy, escala, escala, 0, c_white, 1);	
		}
		
		ix++;
		if ix >= slots_h{
			ix = 0;
			iy++;
		}
		
	}
	
	// Largar o item selecionado
	if mouse_check_button_pressed(mb_right){
		item_selecionado = -1;
		pos_selecionada = -1;
	}
	
	
	if item_selecionado != -1{
		draw_sprite_ext(spr_inventario_arma, item_selecionado, _mx, _my, escala, escala, 0, c_white, 0.5);
	}
	
}