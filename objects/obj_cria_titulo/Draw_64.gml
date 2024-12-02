/// @description Insert description here
// You can write your code in this editor

draw_set_font(fnt_titulos)
draw_set_color(c_white)
draw_set_alpha(alph)
draw_text(320/2-string_width(texto)/2, 240/2-string_height(texto)/2, texto)
draw_set_alpha(1)

alph = clamp(alph, 0, 1)

if passou = -1
{
	if alph < 0
	{
		instance_destroy()
	}
}

if alph >= 1 and passou = 0
{
	passou = 1
	alarm[0] = 180
}

