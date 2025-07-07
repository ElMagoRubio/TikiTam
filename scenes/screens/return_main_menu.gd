extends Button

const MAIN_MENU_PATH = "res://scenes/ui/main_menu.tscn"

func _on_pressed() -> void:
	get_tree().change_scene_to_file(MAIN_MENU_PATH)
