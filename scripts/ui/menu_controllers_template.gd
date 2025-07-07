### ARCHIVO PLANTILLA"

extends Control

@onready var Button0 = $Buttons/Button0
@onready var Button1 = $Buttons/Button1
@onready var Button2 = $Buttons/Button2
@onready var button_sound = $Buttons/ButtonSound

func _on_button_0_pressed():
	print("Button 0 pressed")
	button_sound.play()
	await get_tree().create_timer(0.1).timeout
	


func _on_button_1_pressed():
	print("Button 1 pressed")
	button_sound.play()
	await get_tree().create_timer(0.1).timeout


func _on_button_2_pressed():
	print("Button 2 pressed")
	button_sound.play()
	await get_tree().create_timer(0.1).timeout
