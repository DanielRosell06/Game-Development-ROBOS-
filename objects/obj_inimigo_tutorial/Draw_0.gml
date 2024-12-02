

if hp != hp_max 
{
	draw_set_color(c_black)
	draw_rectangle(x-5, y-34, x+25, y-33, 0)
	draw_set_color(c_red)
	if hp>0
	{
		draw_rectangle(x-5, y-34, ((hp/120)*25)+x-5, y-33, 0)
	}
	draw_set_color(c_white)
}

hp = clamp(hp, 0, hp_max)
if hp = 0 and morrendo = 0
{
	if obj_player.x > x
	{
		sprite_index = spr_inimigo_tuorial_morrendo_esquerda
	}else
	{
		sprite_index = spr_inimigo_tuorial_morrendo_direita
	}
	morrendo = 1
}

if instance_exists(obj_surface_water)
{
	if surface_exists(obj_surface_water.surf)
	{
		surface_set_target(obj_surface_water.surf)

		draw_self()

		surface_reset_target()
	}
}
else
{
	draw_self()
}
