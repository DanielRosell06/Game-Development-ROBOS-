
function desenha_tudo ()
{
	if direcao = 1
	{
		draw_sprite_ext(spr_owlyn_braco, 0, x+8, y+12, -1, 1, rotacao_braco + rotacao, c_white, 1)
		
		draw_self()
		draw_sprite_ext(olho_sprite_index, olho_image_index, x, y+6, 1, 1, rotacao, c_white, 1)
		draw_sprite_ext(spr_owlyn_roda, roda_image_index, x-5, y+21, 1, 1, rotacao, c_white, 1)
		draw_sprite_ext(spr_owlyn_braco, 0, x-5, y+12, -1, 1, rotacao_braco + rotacao, c_white, 1)
		
		if saindo_raio
		{
			draw_sprite_ext(spr_owlyn_raio, 0, x+4, y+6, room_width-x, 1, 0, c_white, 1)
		}
		
		olho_image_index+=olho_image_speed
		roda_image_index+=roda_image_speed
	}else
	{
		draw_sprite_ext(spr_owlyn_braco, 0, x-5, y+12, 1, 1, rotacao_braco + rotacao, c_white, 1)
		draw_self()
		draw_sprite_ext(olho_sprite_index, olho_image_index, x-6, y+6, 1, 1, rotacao, c_white, 1)
		draw_sprite_ext(spr_owlyn_roda, roda_image_index, x-6, y+21, 1, 1, rotacao, c_white, 1)
		draw_sprite_ext(spr_owlyn_braco, 0, x+5, y+12, 1, 1, rotacao_braco + rotacao, c_white, 1)
		
		if saindo_raio
		{
			draw_sprite_ext(spr_owlyn_raio, 0, x-5, y+6, -x, 1, 0, c_white, 1)
		}
		
		olho_image_index+=olho_image_speed
		roda_image_index+=roda_image_speed
	}
}

rotacao_braco = -hsp*60

if rotacao_braco > 270
{
	rotacao_braco-=0.05
}else
{
	rotacao_braco+=0.05
}