extends Node

# Button Start
func _on_button_pressed() -> void:
	get_tree().call_deferred("change_scene_to_file", "res://scenes/map01.tscn") # Va al primer mapa

# Button Keys
func _on_button_2_pressed() -> void:
	get_tree().call_deferred("change_scene_to_file", "res://scenes/keys.tscn")
