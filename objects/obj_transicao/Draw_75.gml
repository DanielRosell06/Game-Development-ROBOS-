
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
	if room != destino{room_goto(destino)}
	transitou = 1
	alarm[0] = 30
}

