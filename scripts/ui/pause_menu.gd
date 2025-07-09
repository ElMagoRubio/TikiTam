extends Node2D

const MAIN_MENU_PATH = GlobalConstants.MAIN_MENU_PATH

@onready var pause_button = $PauseButton
@onready var pause_menu = $PauseMenu
@onready var options_menu = $OptionsMenu


func _on_pause_button_pressed():
	pause_button.visible = false
	pause_menu.visible = true
	get_tree().paused = true

func _on_pause_button_0_pressed():
	pause_menu.visible = false
	pause_button.visible = true
	get_tree().paused = false

func _on_pause_button_1_pressed():
	pause_menu.visible = false
	options_menu.visible = true

func _on_pause_button_2_pressed():
	get_tree().paused = false
	get_tree().change_scene_to_file(MAIN_MENU_PATH)

func _on_options_button_2_pressed():
	options_menu.visible = false
	pause_menu.visible = true
