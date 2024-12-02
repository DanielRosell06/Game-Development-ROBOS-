
scr_draw_inimigo_default()


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
