/// @description Programando o pause

if paused == true
{
	if passou = 0
	{
		cam_x =	obj_camera.x - obj_camera.view_w/2
		cam_y = obj_camera.y - obj_camera.view_h/2
		// Pegando a ultima informação da surface anterior ao pause
		surf_pause = surface_create(room_width, room_height)
		surface_set_target(surf_pause)
		draw_surface(application_surface, 0, 0)
		if instance_exists(obj_surface_water)
		{
			if surface_exists(obj_surface_water.surf)
			{
				shader_set(shd_water)
				shader_set_uniform_f(obj_surface_water.uniTime, current_time)
				var tex = surface_get_texture(obj_surface_water.surf)
				shader_set_uniform_f(obj_surface_water.uniTexel, texture_get_texel_width(tex), texture_get_texel_height(tex))
				draw_surface_part_ext(obj_surface_water.surf, 0, 0-20, room_width, room_height, -cam_x, room_height+148-cam_y, image_xscale, image_yscale *-0.8,  c_white, 1)
				shader_reset()
			}
		}
		draw_sprite_ext(spr_agua, 0, 0, room_height-35, room_width/64, 4, 0, c_white, 1)
		if layer_exists("Frente")
		{
			var layer_id = layer_get_id("Frente")
			var background_id = layer_background_get_id(layer_id)
			var sprite_fundo = layer_background_get_sprite(background_id)
			draw_sprite(sprite_fundo, image_index/10, -cam_x, -cam_y)
		}
		surface_reset_target()
		
		
		passou = 1
	}
	
	// Checando se a surface existe e desenhando
	if surface_exists(surf_pause)
	{
		draw_surface(surf_pause, cam_x, cam_y)
	}
	
	// desativando todos os objetos por tras
	instance_deactivate_all(true)
	
	// desenhando um pause na tela
	draw_set_color(c_black)
	draw_set_alpha(0.6)
	draw_rectangle(cam_x, cam_y, cam_w + cam_x, cam_h+ cam_y, 0)
	draw_set_alpha(1)
	
	draw_set_color(c_white)
	var text = "Pause"
	draw_text(cam_x + cam_w/2 - string_width(text)/2, cam_y + cam_h/2 - string_height(text)/2, text)
	
}else
{
	if surface_exists(surf_pause)
	{
		surface_free(surf_pause)
	}
	passou = 0
}


if global.pausa_ataque == 1
{
	if passou_ = 0
	{
		cam_x =	obj_camera.x - obj_camera.view_w/2
		cam_y = obj_camera.y - obj_camera.view_h/2
		surf_pausa_ataque = surface_create(room_width, room_height)
		surface_set_target(surf_pausa_ataque)
		draw_surface(application_surface, 0, 0)
		if instance_exists(obj_surface_water)
		{
			if surface_exists(obj_surface_water.surf)
			{
				shader_set(shd_water)
				shader_set_uniform_f(obj_surface_water.uniTime, current_time)
				var tex = surface_get_texture(obj_surface_water.surf)
				shader_set_uniform_f(obj_surface_water.uniTexel, texture_get_texel_width(tex), texture_get_texel_height(tex))
				draw_surface_part_ext(obj_surface_water.surf, 0, 0-20, room_width, room_height, -cam_x, room_height+148-cam_y, image_xscale, image_yscale *-0.8,  c_white, 1)
				shader_reset()
			}
		}
		draw_sprite_ext(spr_agua, 0, 0, room_height-35, room_width/64, 4, 0, c_white, 1)
		if layer_exists("Frente")
		{
			var layer_id = layer_get_id("Frente")
			var background_id = layer_background_get_id(layer_id)
			var sprite_fundo = layer_background_get_sprite(background_id)
			draw_sprite(sprite_fundo, image_index/10, -cam_x, -cam_y)
		}
		surface_reset_target()
		alarm[0] = global.tempo_pausa
		
		passou_ = 1
	}
	
	draw_surface(surf_pausa_ataque, cam_x, cam_y)
	instance_deactivate_all(true)
}










