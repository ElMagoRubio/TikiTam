extends Node2D

const MAIN_SCENE_PATH = "res://scenes/screens/main_scene.tscn"
const MENU_CONTROLLERS_PATH = "res://scenes/ui/menu_controllers.tscn"
const SETTINGS_MENU_PATH = "res://scenes/ui/settings_menu.tscn"

var current_menu: Control

func _on_menu_button_0_pressed() -> void:
	get_tree().change_scene_to_file(MAIN_SCENE_PATH)


func _on_menu_button_1_pressed() -> void:
	get_tree().change_scene_to_file(SETTINGS_MENU_PATH)


func _on_menu_button_2_pressed() -> void:
	get_tree().quit()
