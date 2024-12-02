// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_colisoes_padrao(){
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
}