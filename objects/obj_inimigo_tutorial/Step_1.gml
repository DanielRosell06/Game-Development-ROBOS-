
if place_meeting(x, y, obj_ataque) and hp > 0
{
	if obj_player.x > x
	{
		sprite_index = spr_inimigo_tutorial_mechendo_esquerda
	}else
	{
		sprite_index = spr_inimigo_tutorial_mechendo_direita
	}
	hp-=global.dano
	image_index = 0
}
