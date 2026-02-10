extends Control # START_MENU

# Button EXIT
func _on_button_pressed() -> void:
	get_tree().call_deferred("change_scene_to_file", "res://scenes/start_menu.tscn") # Va al menu de inicio
