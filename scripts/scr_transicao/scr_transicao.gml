// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_transicao(_destino, _orientacao){
	var transita = instance_create_layer(0, 0, "Nao_visiveis", obj_transicao)
	transita.destino = _destino
	transita.orientacao = _orientacao
}