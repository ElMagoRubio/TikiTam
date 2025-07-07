extends Control

const sound = "res://assets/audio/sfx/Jam_Player_Tambor_1_Sonido.ogg"

@onready var Button0 = $Buttons/Button0
@onready var Button1 = $Buttons/Button1
@onready var Button2 = $Buttons/Button2

func _on_button_0_button_down() -> void:
	print("Button 0 pressed")
	if not GlobalSounds.play_sound(sound):
		print("Error: no se pudo reproducir el sonido")


func _on_button_1_button_down() -> void:
	print("Button 1 down")
	if not GlobalSounds.play_sound(sound):
		print("Error: no se pudo reproducir el sonido")


func _on_button_2_button_down() -> void:
	print("Button 2 down")
	if not GlobalSounds.play_sound(sound):
		print("Error: no se pudo reproducir el sonido")


func _on_button_2_pressed() -> void:
	print("Button 2 pressed")
	self.visible = false
