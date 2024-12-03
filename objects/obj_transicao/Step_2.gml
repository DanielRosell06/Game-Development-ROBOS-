
if transitou = 1
{
	switch orientacao
	{
		case "oeste":
		if instance_exists(obj_saida_oeste)
		{
			obj_player.x = obj_saida_oeste.x + 35
			obj_player.y = obj_saida_oeste.y + 10
			obj_camera.x = obj_player.x
			obj_camera.y = obj_player.y
		}
		break;
		
		case "leste":
		if instance_exists(obj_saida_leste)
		{
			obj_player.x = obj_saida_leste.x - 35
			obj_player.y = obj_saida_leste.y + 10
			obj_camera.x = obj_player.x
			obj_camera.y = obj_player.y
		}
		break;
		
		case "norte":
		if instance_exists(obj_saida_norte)
		{
			obj_player.x = obj_saida_oeste.x + 17
			obj_camera.x = obj_player.x
			obj_camera.y = obj_player.y
		}
		break;
		
		case "sul":
		if instance_exists(obj_saida_sul)
		{
			obj_player.x = obj_saida_oeste.x + 17
			obj_camera.x = obj_player.x
			obj_camera.y = obj_player.y
		}
		break;
	}
}