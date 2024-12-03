#region Atribuição de teclas

	var key_w =  keyboard_check(ord("W"))
	var key_a =  keyboard_check(ord("A"))
	var key_s =  keyboard_check(ord("S"))
	var key_d =  keyboard_check(ord("D"))
	var key_attack = keyboard_check_pressed(ord("J"))
	var key_jump = keyboard_check(ord("K"))

#endregion

function possivel_pular()
{
	var key_jump = keyboard_check(ord("K"))
	var key_jump_pressed = keyboard_check_pressed(ord("K"))
	
	if !key_jump{pode_pular = 0}
	
	if place_meeting(x, y+1, obj_parede) and key_jump_pressed
	{
		pode_pular = 1
		alarm[1] = 30
		image_index = 0
	}
	
	if key_jump and pode_pular = 1
	{
		global.player_state = "pulando"
		vsp = -1.5
	}
}





#region Movimentação
	
	if !(instance_exists(obj_transicao))
	{
		hsp = (key_d - key_a)*max_speed
	}else{if obj_transicao.transitou != 0
	{
		hsp = (key_d - key_a)*max_speed
	}}
	vsp = clamp(vsp, -1.5, 2.5)
	vsp += grv
	
	if (key_a or key_d) and hsp != 0 and global.player_state == "normal"
	{
		global.player_state = "andando"
	}
	
	
	if global.player_state = "andando"
	{
		
		if hsp>0{direcao = 1; image_xscale = 1}
		if hsp<0{direcao = -1; image_xscale = -1}
		if hsp = 0{global.player_state = "normal"}		
		
		if comecou_andar = 0
		{
			sprite_index = spr_player_comecando_andar
			comecou_andar = 1
		}
		possivel_pular()
		
	}
	
	if global.player_state = "normal"
	{
		sprite_index = spr_player_parado
		comecou_andar = 0
		possivel_pular()
	}
	
	
	if global.player_state = "pulando"
	{
		
		possivel_pular()
		image_index = clamp(image_index, 0, 3)
		if vsp <= -1.4
		{
			sprite_index = spr_player_comeco_pulo
			
		}else
		{
			sprite_index = spr_player_invertendo_pulo
		}
		
		if sprite_antigo != sprite_index
		{
			image_index = 0
			sprite_antigo = sprite_index
		}
		
		if place_meeting(x, y+1, obj_parede) or place_meeting(x, y+1, obj_stairs)
		{
			image_index = 0
			sprite_index = spr_player_parado
			global.player_state = "normal"
		}
		
		if hsp>0{direcao = 1; image_xscale = 1}
		if hsp<0{direcao = -1; image_xscale = -1}
		
	}
	
#endregion

#region Ataque
	
	// Entrada e saida do ataque
	if key_attack and global.player_state != "morrendo"
	{
		if fase_combo = 0
		{
			fase_combo = 1
			global.player_state = "atacando"
			image_index = 0
		}else
		{
			continuar_combo = 1
			alarm[0] = 20 // Timer pra parar o combo
		}
	}
	
	// Ataque em si
	if global.player_state = "atacando"
	{
		hsp = 0
		switch fase_combo
		{
			case 1:
				sprite_index = spr_player_attack_1
			break
			case 2:
				sprite_index = spr_player_attack_2
				if atacar = 1{instance_create_layer(x+ 24*direcao, y, "Player", obj_ataque); atacar = 0}
			break
		
		
			case 3:
				sprite_index = spr_player_attack_3
				if atacar = 1{instance_create_layer(x + 24*direcao, y, "Player", obj_ataque); atacar = 0}
			break
		
		
			case 4:
				sprite_index = spr_player_attack_4
			break
			case 5:
				sprite_index = spr_player_attack_5
				if atacar = 1{instance_create_layer(x + 16*direcao, y, "Player", obj_ataque); atacar = 0}	
			break
		}
	}

#endregion


#region morrendo

	if global.player_state == "morrendo"
	{
		hsp = 0
		
		sprite_index = spr_player_morrendo
		if image_index >= 13
		{
			image_speed = 0
			if !instance_exists(obj_menu_morte)
			{
				instance_create_layer(0, 0, "Player", obj_menu_morte)
			}
		}
	}

#endregion


#region Tomando Dano

	if global.player_hp != global.hp_desatualizado
	{
		imortal_frames += 1
		
		if global.player_hp != hp_mais_desatualizado and imortal_frames != 1
		{
			global.player_hp = hp_mais_desatualizado
		}
		
		
		if imortal_frames == 1 and global.player_hp > 0
		{
			vsp = -3	
		}
		
		
		hp_mais_desatualizado = global.player_hp
		
		
		if imortal_frames >= 76
		{
			imortal_frames = 0
			global.hp_desatualizado = global.player_hp
		}
		
		
		if global.player_hp <= 0 and global.player_state != "morrendo"
		{
			image_index = 0
			scr_pause_ataque(30)
			global.player_state = "morrendo"
		}
	}

#endregion

#region Colisões


// Parede
	if (place_meeting(x+hsp, y, obj_parede))
	{
		while (!place_meeting(x+sign(hsp), y, obj_parede))
		{
			x = x + sign(hsp)
		}
		hsp = 0
	}

	//criando colisoes de y
	if (place_meeting(x, y+vsp, obj_parede))
	{
		while (!place_meeting(x, y+sign(vsp), obj_parede))
		{
			y = y + sign(vsp)
		}
		vsp = 0
	}


// Escada
	if (place_meeting(x+hsp, y, obj_stairs))
	{
		var instance = instance_place(x + hsp, y, obj_stairs)

		if collision_point(instance.x, instance.y-1, obj_stairs, false, true) = noone
		{
			y = y - instance.sprite_height
		}
	}

	if (place_meeting(x, y+vsp, obj_stairs))
	{
		while (!place_meeting(x, y+sign(vsp), obj_stairs))
		{
			y = y + sign(vsp)
		}
		vsp = 0
	}

#endregion

x+=hsp
y+=vsp