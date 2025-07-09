extends Button

const MAIN_MENU_PATH = GlobalConstants.MAIN_MENU_PATH

func _on_pressed() -> void:
	get_tree().change_scene_to_file(MAIN_MENU_PATH)
