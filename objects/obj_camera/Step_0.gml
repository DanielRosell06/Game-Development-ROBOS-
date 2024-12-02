
if instance_exists(follow)
{
	xTo = follow.x
	yTo = follow.y
}

x = lerp(x, xTo + (40*obj_player.direcao), 0.05) //(xTo + 40*obj_player.direcao) / 20
y = lerp(y, yTo, 0.1)//(yTo + 40*obj_player.direcao) / 20
x += shake
y += shake

if shake < 1 and shake > -1{shake = 0}

shake = lerp(shake, 0, 0.2)


/*															 CODIGO DE CAMERA QUE SEGUE O MOUSE
x += ((xTo*3/4 + mouse_x/4) - (x - view_w_half /2)) /5
y += ((yTo*3/4 + mouse_y/4) - (y + view_h_half/2))/5
*/

x = clamp(x, view_w/2, room_width - view_w/2)
y = clamp(y, view_h/2, room_height - view_h/2)

camera_set_view_pos(cam, x-view_w/2, y-view_h/2)
camera_set_view_angle(cam, shake)

/*
if layer_exists("Backgrounds")
{
	layer_x("Backgrounds", x/2)
}

if layer_exists("Backgrounds_1")
{
	layer_x("Backgrounds_1",x/20)
}

if layer_exists("Backgrounds_2")
{
	layer_x("Backgrounds_2",x/10)
}

