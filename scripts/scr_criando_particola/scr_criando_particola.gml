// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_criando_particola(quantidade, sprite){
	repeat(quantidade)
	{
		var instance = instance_create_layer(x, y, "Frente",obj_particola_presset)
		instance.sprite_index = sprite
	}
}