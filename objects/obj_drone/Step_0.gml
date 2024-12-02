var key_kill = keyboard_check_pressed(vk_enter)



if key_kill
{
	derrotado = 1
	attack = 0
	obj_camera.shake = 3
	alarm[0] = 1
}


if derrotado = 0
{
	if attack = 1
	{
		if lado = 1
		{
			hsp = lerp(x, obj_player.x - 70, .04) - x
		}
		if lado = -1
		{
			hsp = lerp(x, obj_player.x + 70, .04) - x
		}
	
		hsp = clamp(hsp, -3, 3)
		vsp = clamp(vsp, -3, 3)
	
	
		vsp = lerp(y, obj_player.y - 60, .02) - y
	}


	if distance_to_object(obj_player) < 50 
	{
		attack = 1
	}

	if hsp > 0.1 or hsp < -0.1
	{
		image_angle = -(hsp*12)
		//image_angle = clamp(image_angle, -100, 100)
	}else
	{
		image_angle = 0
	}
}else
{
	if !place_meeting(x, y-(sprite_width/2)+12, obj_parede)
	{
		vsp = 1.2
		hsp = 3
		image_angle = -(hsp*12)
	}else
	{
		if hsp>0
		{
			obj_camera.shake = 1
			scr_criando_particola(hsp+3, spr_particola_terra)
		}else
		{
			image_index = 0
			image_speed = 0
		}
		hsp -=0.1
		vsp = 0
		hsp = clamp(hsp, 0, 10)
	}
}


x += hsp
y += vsp


// ULTIMA ATUALIZAÇÃO, N TO MAIS USANDO ESTE CÓDIGO !!!!!!

// PROGRAMAR O ATAQUE DO PLAYER, QUANDO BATER, SÓ REFAZ ESSE CODIGO AQUI
// MASS O UNICO NEGOCO É Q QUANDO O PLAYER TIVER BATENDO, O HSP E VSP VÃO SER 0, ENTÃO TEM SÓ Q OLHAR A DIREÇÃO DO PLAYER
/*
	direcao_player = point_direction(obj_player.x, obj_player.y, obj_player.x + obj_player.hsp, obj_player.y + obj_player.vsp)
	xf = obj_player.x + cos((direcao_player*pi/180))*100
	yf = obj_player.y + sin((direcao_player*pi/180))*100
	
	if attack == 1
	{
		x0 = x
		y0 = y
		hsp = sqrt(-2*aceleracao*(abs(xf-x0)))
		vsp = sqrt(-2*aceleracao*(abs(yf-y0)))
	}
*/
