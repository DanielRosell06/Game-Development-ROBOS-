// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_cria_titulo(_texto){
	if instance_exists(obj_cria_titulo){instance_destroy(obj_cria_titulo)}
	var _instance = instance_create_layer(0 ,0 , "Nao_visiveis" , obj_cria_titulo)
	_instance.texto = _texto
}