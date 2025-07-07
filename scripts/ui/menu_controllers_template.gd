extends Control

signal button_0_pressed
signal button_1_pressed
signal button_2_pressed

@onready var Button0 = $Buttons/Button0
@onready var Button1 = $Buttons/Button1
@onready var Button2 = $Buttons/Button2

func _on_button_0_pressed() -> void:
	print("Button 0")
	emit_signal("button_0_pressed")


func _on_button_1_pressed() -> void:
	print("Button 1 pressed")
	emit_signal("button_1_pressed")


func _on_button_2_pressed() -> void:
	print("Button 2 pressed")
	emit_signal("button_2_pressed")
