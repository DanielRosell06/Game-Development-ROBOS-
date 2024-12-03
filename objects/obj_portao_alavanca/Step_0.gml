

colisivel.image_xscale = 0.5625
colisivel.image_yscale = 4 - (image_index * 0.375)

if image_index <= 0 or image_index >= 10
{
	image_speed = 0
	
}

if alavanca_atrelada.ativa != estado_alavanca
{
	alavanca_switch = 1
	estado_alavanca = alavanca_atrelada.ativa
}

if alavanca_switch == 1
{
	if alavanca_atrelada.ativa == 1
	{
		image_speed = 1
	}else
	{
		image_speed = -1
	}
	
	alavanca_switch = 0
}

