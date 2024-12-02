// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_draw_inimigo_default(){

	if atingido == 1
	{
		gpu_set_fog(true, c_white, 0, 0)
		draw_self()
		gpu_set_fog(false, c_white, 0, 0)
	}

	if Hp != HpMax
	{
		draw_set_color(c_black)
		draw_rectangle(x-12, y-15, x+13, y-14, 0)
		draw_set_color(c_red)
		if Hp>0
		{
			draw_rectangle(x-12, y-15, ((Hp/HpMax)*25)+x-12, y-14, 0)
		}
		draw_set_color(c_white)
	}
}