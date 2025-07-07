extends Node

var audio_player: AudioStreamPlayer

func _ready():
	audio_player = AudioStreamPlayer.new()
	add_child(audio_player)
	audio_player.bus = "SFX"

func play_sound(path: String):
	if not FileAccess.file_exists(path):
		push_error("Archivo de sonido no encontrado: " + path)
		return false
	
	var stream = load(path)
	if stream is AudioStream:
		audio_player.stream = stream
		audio_player.play()
		return true
	else:
		push_error("No se pudo cargar el archivo de audio: " + path)
		return false
