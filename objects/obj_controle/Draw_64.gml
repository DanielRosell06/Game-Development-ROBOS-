

if !paused and !instance_exists(obj_menu_morte){

	switch global.area
	{
		case "esgoto":
			draw_sprite(spr_vida_esgoto, 0, 0, 0)
		break;
	}

	gpu_set_fog(true, c_white, 0, 0)
	draw_sprite_part(spr_vida, 0, 0, 0, (global.hp_desatualizado/200) * 64, 5, 14, 16)
	gpu_set_fog(false, c_white, 0, 0)

	draw_sprite_part(spr_vida, 0, 0, 0, (global.player_hp/200) * 64, 5, 14, 16)
}	