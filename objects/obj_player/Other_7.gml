atacar = 1


if continuar_combo = 1{
	if fase_combo < 5 and global.player_state = "atacando"
	{
		fase_combo+=1
	
		if fase_combo = 2 and !place_meeting(x+(20*direcao), y, obj_parede)
		{
			x+=12*direcao
		}
	
		if fase_combo = 3 and !place_meeting(x+(20*direcao), y, obj_parede)
		{
			x+=12*direcao
		}
	
		if fase_combo = 5 and !place_meeting(x+(20*direcao), y, obj_parede)
		{
			x+=12*direcao
		}
	
	
	}else
	{
		if global.player_state = "atacando"
		{
			fase_combo = 0
			sprite_index = spr_player_parado
			global.player_state = "normal"
		}
	}
}

else
{
	if (fase_combo = 1 or fase_combo = 4)
	{
		fase_combo += 1
		if fase_combo = 2 and !place_meeting(x+(20*direcao), y, obj_parede)
		{
			x+=12*direcao
		}
	
		if fase_combo = 3 and !place_meeting(x+(20*direcao), y, obj_parede)
		{
			x+=12*direcao
		}
	
		if fase_combo = 5 and !place_meeting(x+(20*direcao), y, obj_parede)
		{
			x+=12*direcao
		}
	}
	else
	{
		if global.player_state = "atacando"
		{
			fase_combo = 0
			sprite_index = spr_player_parado
			global.player_state = "normal"
		}
	}
}



if comecou_andar = 1
{
	sprite_index = spr_player_andando
}