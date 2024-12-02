
w = room_width
h = room_height

surf = surface_create(w, h)
//surf_frente  = surface_create(w, h)

uniTime = shader_get_uniform(shd_water, "Time")
uniTexel = shader_get_uniform(shd_water, "Texel")