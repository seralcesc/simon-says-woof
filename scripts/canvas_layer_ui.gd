extends CanvasLayer

@onready var time_label = $TextureRect/LabelTimer
@onready var lives_label = $TextureRect2/LabelLives

var time_remaining = 60.0
var lives = 3

func _process(delta):
	if time_remaining > 0:
		time_remaining -= delta
		time_label.text = str(int(time_remaining))
		if time_remaining <= 0:
			win_game()

func remove_life() -> bool:
	lives -= 1
	lives_label.text = "Lives: " + str(lives)
	
	if lives <= 0:
		lose_game()
		return true
	
	return false

func win_game():
	get_tree().change_scene_to_file("res://scenes/win_menu.tscn")

func lose_game():
	get_tree().change_scene_to_file("res://scenes/game_over_menu.tscn")
