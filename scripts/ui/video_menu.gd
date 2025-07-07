extends Node2D

@onready var fullscreen_button: Button = $MenuControllers/Buttons/Button0
@onready var borderless_button: Button = $MenuControllers/Buttons/Button1

const WINDOWED_SIZE := Vector2i(960, 540)

func _ready() -> void:
	update_display_mode()

func on_button_0_toggled(toggled_on: bool) -> void:
	# Si se activa fullscreen, desactiva borderless
	if toggled_on and borderless_button.button_pressed:
		borderless_button.button_pressed = false
	update_display_mode()

func on_button_1_toggled(toggled_on: bool) -> void:
	# Si se activa borderless, desactiva fullscreen
	if toggled_on and fullscreen_button.button_pressed:
		fullscreen_button.button_pressed = false
	update_display_mode()

func update_display_mode() -> void:
	var win := get_window()
	var fullscreen := fullscreen_button.button_pressed
	var borderless := borderless_button.button_pressed

	match [fullscreen, borderless]:
		[true, false]:
			# Pantalla completa con bordes
			win.mode = Window.MODE_FULLSCREEN
			win.borderless = false
			print("Modo: Fullscreen con bordes")

		[false, true]:
			# Pantalla completa sin bordes (borderless fullscreen)
			win.mode = Window.MODE_FULLSCREEN
			win.borderless = true
			print("Modo: Fullscreen sin bordes")

		_:
			# Modo ventana clásico
			win.mode = Window.MODE_WINDOWED
			win.borderless = false
			win.size = WINDOWED_SIZE
			print("Modo: Ventana normal")
