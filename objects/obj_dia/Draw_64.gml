// Define texto
var texto = "Dia " + string(dia);

// Define posição (canto superior direito)
var margem = 32; // margem da borda
var largura_texto = string_width(texto);

var pos_x = display_get_gui_width() - largura_texto - margem;
var pos_y = margem;

// Cor e fonte (opcional)
draw_set_color(c_white);
draw_set_halign(fa_right);
draw_set_valign(fa_top);

// Desenha o texto
draw_text(pos_x, pos_y, texto);
