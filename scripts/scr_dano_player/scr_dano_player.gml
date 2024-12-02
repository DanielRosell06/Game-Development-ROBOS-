// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_dano_player(_dano_player){
	if obj_player.imortal_frames == 0 and global.player_hp > 0
	{
		global.player_hp -= _dano_player
		scr_pause_ataque(10)
	}
	obj_camera.shake = 3
}