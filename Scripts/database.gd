extends Node

enum LANGUAGE {
	ENGLISH,
	CHINESE,
	MELAYU
}
const save_path: String = "user://save.save"
var default_data: Dictionary = {
	randomize_quiz = true,
	star_definitions = [],
	#language = LANGUAGE.ENGLISH
}
var data: Dictionary = default_data.duplicate(true)

func _ready():
	load_data()

func load_data() -> Dictionary:
	if FileAccess.file_exists(save_path):
		var file: FileAccess = FileAccess.open(save_path, FileAccess.READ)
		
		data = file.get_var()
	else:
		save_data()
	
	return data

func save_data() -> void:
	var file: FileAccess = FileAccess.open(save_path, FileAccess.WRITE)
	
	file.store_var(data)
