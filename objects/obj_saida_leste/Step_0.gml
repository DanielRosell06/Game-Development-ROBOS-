
if place_meeting(x, y, obj_player)
{
	if instance_exists(obj_transicao)
	{
		if obj_transicao.destino != destino{scr_transicao(destino, "oeste")}
	}else
	{
		scr_transicao(destino, "oeste")
	}
}


