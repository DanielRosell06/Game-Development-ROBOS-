
vsp += grv

if distance_to_object(obj_player) < 90 and estado = "desativado"
{
	estado = "normal"
}

if hsp < 0
{
	if estado != "atirando"
	{
		direcao = -1
	}
	roda_image_speed = -0.0833
	image_xscale = 1
}
if hsp > 0
{
	if estado != "atirando"
	{
		direcao = 1
	}
	
	roda_image_speed = 0.0833
	image_xscale = -1
}
if hsp = 0
{
	roda_image_speed = 0
}
if Hp <= 50 and pouca_vida = 0
{
	alarm[1] = 1
	pouca_vida = 1
}
if Hp <= 0
{
	estado = "morto"
}

switch estado
{	
	case "normal":
		alarm[0] = -1
		olho_image_speed = 0.125
		alarm[0] = -1
		sprite_index = spr_owlyn_corpo
		if distance_to_object(obj_player)<70
		{
			if obj_player.x > x
			{
				hsp -= 0.1
				direcao = -1
			}else				
			{
				hsp += 0.1
				direcao = 1
			}
		}else
		{
			passou_ = 0
			image_index = 0
			estado = "atirando"
		}
		
		if (place_meeting(x+(16*direcao), y, obj_parede)) and passou = 0
		{
			vsp = -3
			passou = 1
		}
		if (place_meeting(x, y+1, obj_parede)){passou = 0}
		
	break
		
	case "atirando":
		if distance_to_object(obj_player)<70
		{
			passou = 0
			estado = "normal"
		}
		
		if passou_ = 0
		{
			alarm[0] = 90
			passou_ = 1
		}
		
		if hsp!= 0
		{
			if obj_player.x > x
			{
				hsp += 0.1
				direcao = 1
			}else
			{
				hsp -= 0.1
				direcao = -1
			}
		}
	break
	
	case "atirar":
		
		if image_index >= 16 and image_index <= 19
		{
			saindo_raio = true
			obj_camera.shake = 1
		}else
		{
			saindo_raio = false
		}
		
		if image_index >= 24
		{
			estado = "normal"
			image_index = 0
		}
	break
	
	case "morto":
		if passou__ = 0
		{
			if (x > obj_player.x) {
			    hsp = 3
				vsp = -2
			}
			else {
			    hsp = -3
				vsp = -2
			}
			rotacao = 90
			passou__ = 1
		}
		
		vsp += grv
		
		sprite_index = spr_owlyn_corpo_inteiro
		if (place_meeting(x, y+4, obj_parede)) {
			hsp = lerp(hsp, 0, 0.1)
		}
		
		
	break
}

if hsp <= .9 and hsp >= -.9
{
	hsp = clamp(hsp, -0.9, 0.9)
}else
{
	if hsp > .9{hsp-=.1}
	if hsp < -.9{hsp+=.1}
	hsp = clamp(hsp, -3, 3)
}


image_angle = lerp(image_angle, 0, 0.1)

if direcao = 1
{
	image_xscale = -1
}
else
{
	image_xscale = 1
}


hsp = clamp(hsp, -0.9, 0.9)

scr_colisoes_padrao()
	
	#endregion

var ataque = noone

if saindo_raio and !instance_exists(obj_ataque_owlyn)
{
	ataque = instance_create_layer(x, y, "inimigos", obj_ataque_owlyn)
	ataque.x0 = x
	ataque.y0 = y
	ataque.direcao = direcao
}

if !saindo_raio and instance_exists(ataque)
{
	instance_destroy(ataque)
}

y += vsp
x += hsp