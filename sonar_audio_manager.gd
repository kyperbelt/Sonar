@tool
extends Node

class_name SonarAudioPlayer

@export 
var _audio_lists : SonarAudioList


var _stream_player : AudioStreamPlaybackPolyphonic



func _ready():
	var audio_player : AudioStreamPlayer = AudioStreamPlayer.new()
	audio_player.stream = AudioStreamPolyphonic.new()
	audio_player.play()
	add_child(audio_player,false, INTERNAL_MODE_FRONT)
	pass





