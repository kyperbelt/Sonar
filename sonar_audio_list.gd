@tool
extends Node 

class_name SonarAudioList

func _get_property_list():
	var hint_string : String = "" 
	for i in range(AudioServer.bus_count):
		hint_string+= AudioServer.get_bus_name(i)
		if i + 1 < AudioServer.bus_count:
			hint_string +=","


	var properties = []
	properties.append({
		"name": "bus",
		"type": TYPE_INT,
		"usage": PROPERTY_USAGE_DEFAULT, 
		"hint": PROPERTY_HINT_ENUM,
		"hint_string": hint_string
	})

	return properties
			
