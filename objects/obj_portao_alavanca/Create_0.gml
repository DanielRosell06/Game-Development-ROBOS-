

colisivel = instance_create_layer(x, y, "Paredes", obj_parede)
image_speed = 0
alavanca_atrelada = noone
estado_alavanca = -1
alavanca_switch = 0

for (var i = 0; i < instance_number(obj_alavanca); ++i;)
{
    var instancia = instance_find(obj_alavanca, i);
	
	if instancia.ID == ID
	{
		alavanca_atrelada = instancia
		break
	}
}