
x = x0
y = y0


if direcao = 1
{
	image_xscale = room_width - x0
}else
{
	image_xscale = -(room_width - (room_width - x0))
}


if place_meeting(x, y, obj_player)
{
	scr_dano_player(40)
}