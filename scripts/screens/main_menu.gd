extends Node2D

const MAIN_SCENE_PATH = GlobalConstants.MAIN_SCENE_PATH
const MENU_CONTROLLERS_PATH = GlobalConstants.MENU_CONTROLLERS_PATH
const SETTINGS_MENU_PATH = GlobalConstants.SETTINGS_MENU_PATH

@onready var main_menu = $MainMenu
@onready var options_menu = $OptionsMenu

func _on_main_button_0_pressed() -> void:
	get_tree().change_scene_to_file(MAIN_SCENE_PATH)


func _on_main_button_1_pressed() -> void:
	main_menu.visible = false
	options_menu.visible = true

func _on_main_button_2_pressed() -> void:
	get_tree().quit()

func _on_option_button_2_pressed() -> void:
	main_menu.visible = true
	options_menu.visible = false
