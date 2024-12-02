
if morto =0
{
	if ativo == 1{
		switch(estado){
			case "normal":
				if obj_player.x > x
				{
					direcao = 1
					hsp += 0.05
				}else
				{
					direcao = -1
					hsp -= 0.05
				}
		
				if direcao != direcao_antiga
				{
					direcao_antiga = direcao
					estado = "virando"
					image_index = 0
				}
			break;
	
			case "virando":
				sprite_index = spr_olwer_virando
				hsp += 0.025 * direcao
				break;
		}

	}


	if (place_meeting(x + 2, y, obj_parede) or place_meeting(x - 2, y, obj_parede)) and abs(hsp) > 1
	{
		obj_camera.shake = 2
	}

	if place_meeting(x, y, obj_player) and atingiu = false
	{
		scr_dano_player(dano_player)
		hsp = -direcao*2
		vsp = -2
		atingiu = true
		obj_camera.shake = 1
	}

	if (place_meeting(x, y+1, obj_parede))
	{
		atingiu = false
	}

	hsp = clamp(hsp, -2, 2)
}

else
{
	if obj_player.x > x
	{
		direcao = 1
	}else
	{
		direcao = -1
	}
	
	sprite_index = spr_olwer_morto
	if (place_meeting(x, y+4, obj_parede)) {
		hsp = lerp(hsp, 0, 0.1)
	}
}


vsp+=grv


scr_colisoes_padrao()

	
x += hsp
y += vsp
