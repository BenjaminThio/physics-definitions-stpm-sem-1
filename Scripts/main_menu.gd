extends Node2D

@onready var chapters_horizontal_container: HBoxContainer = $Chapters/HorizontalContainer
@onready var all_chapters_button: Button = $AllChapters
@onready var star_button: Button = $Star/Button
@onready var star_chars: HBoxContainer = $Star/StarChars
@onready var randomize_option_panel: Panel = $RandomizeOption/Panel
@onready var randomize_option_checkbox: CheckBox = randomize_option_panel.get_node("CheckBox")

func _ready() -> void:
	for chapters_vertical_container in chapters_horizontal_container.get_children():
		for chapter_button in chapters_vertical_container.get_children():
			if "Chapter" in chapter_button.name:
				var chapter_index: int = int(chapter_button.name.replace("Chapter", "")) - 1
				
				chapter_button.pressed.connect(provide_quizzes_on_chapter.bind(chapter_index))
	
	all_chapters_button.pressed.connect(provide_quizzes_on_chapter.bind(999))
	
	update_star_button()
	update_randomize_option_panel()

func update_star_button():
	if Database.data.star_definitions.size() == 0:
		star_button.disabled = true
		star_chars.modulate.a = 0.5
	else:
		star_chars.color_switching_activated = true

func provide_quizzes_on_chapter(chapter_index: int) -> void:
	Global.chapter_index = chapter_index
	
	get_tree().change_scene_to_file("res://Scenes/quiz.tscn")

func preview() -> void:
	Global.preview_index = 0
	get_tree().change_scene_to_file("res://Scenes/preview.tscn")

func exit() -> void:
	get_tree().quit()

func _on_randomize_option_check_box_toggled(toggled_on) -> void:
	Database.data.randomize_quiz = toggled_on
	Database.save_data()
	
	update_randomize_option_panel()

func update_randomize_option_panel() -> void:
	if Database.data.randomize_quiz:
		randomize_option_checkbox.button_pressed = true
		randomize_option_panel.self_modulate = Color.GREEN
	else:
		randomize_option_checkbox.button_pressed = false
		randomize_option_panel.self_modulate = Color.RED
