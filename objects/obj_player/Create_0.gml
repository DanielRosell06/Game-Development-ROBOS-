/// @description Insert description here
// You can write your code in this editor

hsp = 0
vsp = 0
grv = 0.10
max_speed = 1
pode_pular = 1
pulando = false
sprite_antigo = sprite_index

fase_combo = 0
continuar_combo = 0
atacar = 0

comecou_andar = 0

direcao = 1 // ESQUERDA = -1; DIREITA = 1

global.player_state = "normal"

global.dano = 30

global.player_hp = 200
global.hp_desatualizado = 200
hp_mais_desatualizado = 200
imortal_frames = 0