var key_reset = keyboard_check_pressed(ord("C"))
var key_pause = keyboard_check_pressed(vk_escape)


if key_reset {game_restart()}

if key_pause
{
	paused = !paused
	
	if paused == true
	{
		cam_w = obj_camera.view_w
		cam_h = obj_camera.view_h
	}else
	{
		instance_activate_all()
	}
}


if layer_exists("Frente")
{
	
}

