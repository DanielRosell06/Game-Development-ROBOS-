function scr_particula_fumaca(xx_, yy_, _layer_id){
	
	sys = part_system_create();

	em = part_emitter_create(sys);

	part = part_type_create()

	part_system_depth(sys, 500)

	part_type_speed(part, 0.001, .004, -0.01, 0)

	part_type_direction(part, 0, 359, 0, 0)

	part_type_shape(part, pt_shape_disk)

	part_type_size(part, .2, .3, -0.0006, 0)

	part_type_gravity(part, 0.015, 90)

	part_type_color2(part, make_color_rgb(78, 43, 69), make_color_rgb(45, 30, 47))

	part_type_life(part, 250, 300)
	

	
	part_emitter_region(sys, em, xx_ - sprite_width/2, xx_ + sprite_width/2, yy_ - sprite_height/2, yy_ + sprite_height/2, ps_shape_ellipse, ps_distr_gaussian)
	part_emitter_burst(sys, em, part, 1)
}