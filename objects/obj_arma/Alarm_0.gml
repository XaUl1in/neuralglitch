var balas_recarregadas = min(municao_max - municao_atual, municao_total);
municao_atual += balas_recarregadas;
municao_total -= balas_recarregadas;
esta_recarregando = false;