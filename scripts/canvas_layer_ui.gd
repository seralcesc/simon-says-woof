extends CanvasLayer

@onready var label_tiempo = $TextureRect/LabelTimer
@onready var label_vidas = $TextureRect2/LabelLives

var tiempo_restante = 60.0
var vidas = 3

func _process(delta):
	if tiempo_restante > 0:
		tiempo_restante -= delta
		label_tiempo.text = str(int(tiempo_restante))
		if tiempo_restante <= 0:
			ganar_partida()

func quitar_vida() -> bool:
	vidas -= 1
	label_vidas.text = "Lives: " + str(vidas)
	
	if vidas <= 0:
		perder_partida()
		return true
	
	return false

func ganar_partida():
	get_tree().change_scene_to_file("res://scenes/win_menu.tscn")

func perder_partida():
	get_tree().change_scene_to_file("res://scenes/game_over_menu.tscn")
