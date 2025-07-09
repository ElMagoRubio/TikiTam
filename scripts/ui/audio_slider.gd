extends HSlider

const CHANGED_VALUE_SOUND = GlobalConstants.SOUND_TAMBOR_1

@export
var bus_nombre: String
var bus_id: int

func _ready() -> void:
	bus_id = AudioServer.get_bus_index(bus_nombre)
	value_changed.connect(_on_value_changed)

func _on_value_changed(value: float) -> void:
	AudioServer.set_bus_volume_db(
		bus_id, 
		linear_to_db(value))


func _on_drag_ended(value_changed: bool) -> void:
	print("Slider value changed to ", value)	
	if not GlobalSounds.play_sfx_sound(CHANGED_VALUE_SOUND):
		print("Error: no se pudo reproducir el sonido")
