extends Control

var definition_button_packed_scene: PackedScene = preload("res://Instances/definition.tscn")

@onready var title: Label = $Title
@onready var vertical_container: VBoxContainer = $VerticalContainer

func _ready():
	update_preview()

func next():
	if Global.preview_index + 1 < Global.physics_definitions.size():
		Global.preview_index += 1
	else:
		Global.preview_index = 0
	
	update_preview()

func previous():
	if Global.preview_index - 1 >= 0:
		Global.preview_index -= 1
	else:
		Global.preview_index = Global.physics_definitions.size() - 1
	
	update_preview()

func exit():
	get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")

func update_preview():
	var list_of_definition_in_specific_chapter: Dictionary = Global.physics_definitions[Global.preview_index]
	
	for definition_button in vertical_container.get_children():
		vertical_container.remove_child(definition_button)
		
		definition_button.queue_free()
	
	title.text = "Chapter " + str(Global.preview_index + 1)
	
	for definition_index in range(list_of_definition_in_specific_chapter.size()):
		var definition_button: Button = definition_button_packed_scene.instantiate()
		var years_list: Array = Global.physics_definitions[Global.preview_index][list_of_definition_in_specific_chapter.keys()[definition_index]]["years"]
		var years: String = " (" + ", ".join(years_list) + ")"
		
		vertical_container.add_child(definition_button)
		
		definition_button.text = str(definition_index + 1) + ". " + Global.physics_definitions[Global.preview_index][list_of_definition_in_specific_chapter.keys()[definition_index]]["definition_in_different_languages"][Database.LANGUAGE.ENGLISH][0] + [years, ""][int(years_list.is_empty())]
		definition_button.pressed.connect(
			func() -> void:
				Global.specific_definition = list_of_definition_in_specific_chapter.keys()[definition_index]
				get_tree().change_scene_to_file("res://Scenes/quiz.tscn")
		)
