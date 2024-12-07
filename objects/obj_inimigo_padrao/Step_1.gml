

if place_meeting(x, y, obj_ataque)
{
	Hp -= global.dano
	atingido = 1
	alarm[9] = 3 // Reinicia o atingido
	if estado != "morto"{estado = "normal"}
	if estado == "morto"{if obj_player.x > x{direcao = 1}else{direcao = -1}}
	obj_camera.shake = HitShake
	switch Peso
	{
		case 1:
			vsp = -4
			hsp = obj_player.direcao * 3
		break;
		case 2:
			vsp = -3
			hsp = obj_player.direcao * 2
		
		break
		case 3:
			vsp = -2
			hsp = obj_player.direcao		
		break
		case 4:
			vsp = -1
			hsp = obj_player.direcao
		break
		case 5:
			hsp = hsp // Vapo
		break
		
		default:
			hsp = obj_player.direcao
		break
	}
	scr_pause_ataque(HitStopTime)
	
	
	if Hp <= 0 and morto = 0
	{
		alarm[11] = QuantidadeParticolaMorto
		scr_pause_ataque(DeathHitStopTime)
		obj_camera.shake = DeathHitShake
		morto = 1
	}
	
	if Hp < HpMax/4
	{
		alarm[10] = QuantidadeFumacaVivo
	}
}


if distance_to_object(obj_player) < DistanciaAtivacao
{
	ativo = 1
}

