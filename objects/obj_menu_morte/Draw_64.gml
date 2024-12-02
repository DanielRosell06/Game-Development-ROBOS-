



draw_set_alpha(alpha)
draw_set_color(c_black)
draw_rectangle(0, 0, 320, 240, 0)
draw_set_color(c_white)
draw_set_alpha(1)

if alpha >= 1{
	draw_text((320/2) - (string_width("Tentar Novamente")/2), (240/2)- 10, "Tentar Novamente")
	draw_text((320/2) - (string_width("Sair")/2), (240/2)+10, "Sair")
}else
{
	alpha += 0.002
}