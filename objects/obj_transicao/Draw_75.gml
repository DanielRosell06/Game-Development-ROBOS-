
draw_set_color(c_black)
draw_rectangle(0, 0, w, 240, 0)
draw_set_color(c_black)

if transitou = 0
{
	w = lerp(w, 340, 0.05)
}

if transitou = -1
{
	w = lerp(w, -20, 0.05)
	if w < 0
	{
		instance_destroy()
	}
}

if w > 320 and transitou = 0
{
	room_goto(destino)
	
	transitou = 1
	alarm[0] = 30
}

if transitou = 1
{
	switch orientacao
	{
		case "oeste":
		if instance_exists(obj_saida_oeste)
		{
			obj_player.x = obj_saida_oeste.x + 28
			obj_player.y = obj_saida_oeste.y + 10
		}
		break;
		
		case "leste":
		if instance_exists(obj_saida_leste)
		{
			obj_player.x = obj_saida_leste.x - 23
			obj_player.y = obj_saida_leste.y + 10
		}
		break;
		
		case "norte":
		if instance_exists(obj_saida_norte)
		{
			obj_player.x = obj_saida_oeste.x + 17
		}
		break;
		
		case "sul":
		if instance_exists(obj_saida_sul)
		{
			obj_player.x = obj_saida_oeste.x + 17
		}
		break;
	}
}