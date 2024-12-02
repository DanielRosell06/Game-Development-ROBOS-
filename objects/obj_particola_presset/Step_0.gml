vsp += grv

if (place_meeting(x+hsp, y, obj_parede))
{
	while (!place_meeting(x+sign(hsp), y, obj_parede))
	{
		x = x + sign(hsp)
	}
	hsp = 0
}

//criando colisoes de y
if (place_meeting(x, y+vsp-3, obj_parede))
{
	while (!place_meeting(x, y+sign(vsp), obj_parede))
	{
		y = y + sign(vsp)
	}
	vsp = 0
}

if (place_meeting(x, y+1, obj_parede))
{
	hsp = 0
}


image_alpha -= .005



if image_alpha < 0
{
	instance_destroy()
}

x+=hsp
y+=vsp


