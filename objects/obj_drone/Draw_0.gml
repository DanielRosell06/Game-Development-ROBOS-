
draw_self()




if derrotado != 1
{
	if attack = 0
	{
		angulo += angle_difference(0, angulo) * 0.1;
		draw_sprite_ext(spr_pinguelo, 0, x, y, 1, 1, angulo, c_white, 1)
		sprite_index = spr_drone
		attack = 0
	}


	if attack = 1
	{
		if distance_to_object(obj_player) > 100
		{
			attack = 0
		}
		angulo += angle_difference(point_direction(x, y, obj_player.x, obj_player.y),angulo) * 0.1;
		draw_sprite_ext(spr_pinguelo, 0, x, y, 1, 1, angulo, c_white, 1)
		sprite_index = spr_drone_bravo
	}
}
// ACABEI DE CRIAR A PARTICULA DE FUMACA, N MUDEI NADA LA, TEM Q PROGRAMAR MUITA COISA AINDA, MAS COMECA FAZENDO O BIXO CAINDO NO CHÃO, SLA
