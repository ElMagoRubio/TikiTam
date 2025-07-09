extends Node2D

const MAIN_MENU_PATH = GlobalConstants.MAIN_MENU_PATH

@onready var options_menu = $Options
@onready var audio_menu = $Audio
@onready var video_menu = $Video

func _ready():
	options_menu.visible = true
	audio_menu.visible = false
	video_menu.visible = false

func _on_option_button_0_pressed() -> void:
	options_menu.visible = false
	audio_menu.visible = true

func _on_option_button_1_pressed() -> void:
	options_menu.visible = false
	video_menu.visible = true

func _on_video_button_2_pressed() -> void:
	video_menu.visible = false
	options_menu.visible = true

func _on_audio_button_2_pressed() -> void:
	audio_menu.visible = false
	options_menu.visible = true
