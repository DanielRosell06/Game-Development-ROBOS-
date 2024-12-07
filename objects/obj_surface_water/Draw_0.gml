

if !surface_exists(surf)
{
	surf = surface_create(room_width, room_height)
	surface_set_target(surf)
	draw_clear_alpha(c_black, 0)
	surface_reset_target()
}

else
{
	//desenhando a surface
	
		draw_surface(surf, 0, 0)
		
		
	
	// desenhando na agua
	
		// dfesenhando o fundo pra só apareceer na agua
		
	
		
		shader_set(shd_water)
		
		shader_set_uniform_f(uniTime, current_time)
		var tex = surface_get_texture(surf)
		shader_set_uniform_f(uniTexel, texture_get_texel_width(tex), texture_get_texel_height(tex))
		
		draw_surface_part_ext(surf, 0, 0-20, room_width, room_height, 0, room_height+148, image_xscale, image_yscale *-0.8,  c_white, 1)
		
		
		shader_reset()
		
		
		//draw_sprite_ext(spr_agua, 0, 0, room_height - 128, room_width, 1, 0, c_white, 1)
		
	//resetando a surface
		
		surface_set_target(surf)
		draw_clear_alpha(c_black, 0)
		surface_reset_target()
		
		surface_set_target(surf)
		if layer_exists("Fundo")
		{
			var layer_id = layer_get_id("Fundo")
			var background_id = layer_background_get_id(layer_id)
			var sprite_fundo = layer_background_get_sprite(background_id)
			draw_sprite(sprite_fundo, 0, 0, 0)
		}
		surface_reset_target()
		
		draw_sprite_ext(spr_agua, 0, 0, room_height-35, room_width/64, 4, 0, c_white, 1)
		if layer_exists("Frente")
		{
			var layer_id = layer_get_id("Frente")
			var background_id = layer_background_get_id(layer_id)
			var sprite_fundo = layer_background_get_sprite(background_id)
			var layer_sprite_width = sprite_get_width(sprite_fundo)
			draw_sprite(sprite_fundo, 0,  (obj_camera.x/room_width) * (room_width - layer_sprite_width), 0)
		}
		
}



