extends Node2D

const MENU_BUTTON_SOUND = GlobalConstants.SOUND_TAMBOR_1


func _on_return_button_down() -> void:
	print("Return button pressed")
	if not GlobalSounds.play_sound(MENU_BUTTON_SOUND):
		print("Error: no se pudo reproducir el sonido")
