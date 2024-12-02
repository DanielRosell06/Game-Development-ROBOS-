function scr_particula_fogo(xx_, yy_){
	sys = part_system_create();

	em = part_emitter_create(sys);

	part = part_type_create()

	part_system_depth(sys, 2)

	part_type_speed(part, 0.001, .004, -0.01, 0)

	part_type_direction(part, 0, 359, 0, 0)

	part_type_shape(part, pt_shape_disk)

	part_type_size(part, .1, .2, -0.001, 0)

	part_type_gravity(part, 0.04, 90)

	part_type_color3(part, make_color_rgb(247, 207, 145), make_color_rgb(169, 75, 84), make_color_rgb(78, 43, 69))

	part_type_life(part, 60, 75)
	
	
	
	
	part_emitter_region(sys, em, xx_ - sprite_width/2, xx_ + sprite_width/2, yy_ - sprite_height/2, yy_ + sprite_height/2, ps_shape_ellipse, ps_distr_gaussian)
	part_emitter_burst(sys, em, part, 1)
}