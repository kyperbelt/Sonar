@tool
extends Node

class_name SonarEvent

@export
var a1 : AudioStream 

@export
var a2 : AudioStream 

@export
var a3 : AudioStream 


@export
var _play_in_editor : bool = false:
	set(value):
		if (value):
			a1.instantiate_playback()._start(0)
		pass

func _ready():
	pass
