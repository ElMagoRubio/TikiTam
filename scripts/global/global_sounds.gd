extends Node

var audio_player_sfx: AudioStreamPlayer

func _ready():
	audio_player_sfx = AudioStreamPlayer.new()
	add_child(audio_player_sfx)
	audio_player_sfx.bus = "SFX"

func play_sfx_sound(path: String):
	if not FileAccess.file_exists(path):
		push_error("Archivo de sonido no encontrado: " + path)
		return false
	
	var stream = load(path)
	if stream is AudioStream:
		audio_player_sfx.stream = stream
		audio_player_sfx.play()
		return true
	else:
		push_error("No se pudo cargar el archivo de audio: " + path)
		return false
