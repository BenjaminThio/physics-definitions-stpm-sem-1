extends Control

enum LANGUAGE {
	ENGLISH,
	CHINESE,
	MELAYU,
	TAMIL
}
@export var dropdown_transition_duration: float = 0.1
@export var local_language: LANGUAGE = LANGUAGE.ENGLISH

var definitions: Array[String] = []
var quiz_index: int = 0
var is_dropdown: bool = false
var is_dropdowning: bool = false

@onready var back_panel: Panel = $BackPanel
@onready var answer: RichTextLabel = $BackPanel/Answer
@onready var title: Label = $FrontPanel/Title
@onready var quiz: Label = $FrontPanel/Quiz
@onready var dropdown_button: Button = $FrontPanel/Dropdown
@onready var quiz_number: Label = $QuizNumber
@onready var previous_button: Button = $Previous
@onready var next_button: Button = $Next
@onready var exit_button: Button = $Exit
@onready var shuffle_button: TextureButton = $Reshuffle
@onready var star_button: TextureButton = $Star
@onready var language_option: OptionButton = $LanguageOption

func _ready() -> void:
	generate_quiz()
	update_shuffle_button()
	update_star()
	
	if definitions.size() == 1:
		previous_button.disabled = true
		next_button.disabled = true
	
	if not Global.specific_definition.is_empty():
		is_dropdown = true
		title.text = "Preview"
		quiz_number.hide()
		shuffle_button.hide()
		next_button.hide()
		previous_button.hide()
	
	update_dropdown_menu(false)
	update_language()

func update_shuffle_button() -> void:
	if not Database.data.randomize_quiz or definitions.size() == 1:
		shuffle_button.disabled = true
		shuffle_button.self_modulate.a = 0.5

func generate_quiz() -> void:
	definitions.clear()
	quiz_index = 0
	
	if Global.specific_definition == "":
		if Global.chapter_index < 999:
			if Global.chapter_index >= 0:
				get_shuffled_definitions_on_chapter(Global.chapter_index)
			else:
				get_all_shuffled_definitions(true)
		else:
			get_all_shuffled_definitions()
	elif Global.specific_definition in Global.all_physics_definitions:
		definitions.append(Global.specific_definition)
	
	update_quiz()

func get_shuffled_definitions_on_chapter(chapter_index: int) -> void:
	for definition in Global.physics_definitions[chapter_index]:
		definitions.append(definition)
	
	if Database.data.randomize_quiz:
		definitions.shuffle()

func get_all_shuffled_definitions(is_star: bool = false) -> void:
	if not is_star:
		for chapter in Global.physics_definitions:
			for definition in chapter:
				definitions.append(definition)
	else:
		for definition in Database.data.star_definitions:
			definitions.append(definition)
	
	if Database.data.randomize_quiz:
		definitions.shuffle()

func dropdown() -> void:
	if not is_dropdowning:
		is_dropdowning = true
		is_dropdown = not is_dropdown
		
		update_dropdown_menu()
		
		await time.sleep(dropdown_transition_duration)
		
		is_dropdowning = false

func update_dropdown_menu(required_transition: bool = true) -> void:
	var tween: Tween = null

	if required_transition:
		tween =  create_tween()
	
	if is_dropdown:
		if required_transition:
			tween.tween_property(back_panel, "size:y", 360, dropdown_transition_duration)
			tween.set_parallel().tween_property(answer, "position:y", 184, dropdown_transition_duration)
			tween.set_parallel().tween_property(answer, "self_modulate:a", 1, dropdown_transition_duration)
		else:
			back_panel.size.y = 360
			answer.position.y = 184
			answer.self_modulate.a = 1
		dropdown_button.text = "<"
	else:
		if required_transition:
			tween.tween_property(back_panel, "size:y", 192, dropdown_transition_duration)
			tween.set_parallel().tween_property(answer, "position:y", 16, dropdown_transition_duration)
			tween.set_parallel().tween_property(answer, "self_modulate:a", 0, dropdown_transition_duration)
			dropdown_button.text = ">"
		else:
			back_panel.size.y = 192
			answer.position.y = 16
			answer.self_modulate.a = 0

func next() -> void:
	if quiz_index + 1 < definitions.size():
		quiz_index += 1
	else:
		quiz_index = 0
	
	update_quiz()
	update_star()

func previous() -> void:
	if quiz_index - 1 >= 0:
		quiz_index -= 1
	else:
		quiz_index = definitions.size() - 1
	
	update_quiz()
	update_star()

func update_quiz() -> void:
	title.text = ["--- QUIZ ---", "--- 竞猜 ---", "--- KUIZ ---", "--- வினாடி வினா ---"][local_language]
	quiz.text = ["", str(quiz_index + 1) + ". " + ["What is the definition of ", "什么是", "Apakah definasi bagi ", "என்ன"][local_language]][int(Global.specific_definition.is_empty())] + "\"" + Global.all_physics_definitions[definitions[quiz_index]][local_language][0] + "\"" + ["", "?"][int(Global.specific_definition.is_empty())]
	answer.text = "[center]%s[/center]" % (["", ["Ans: ", "答: ", "Jwp: ", "பதில்: "][local_language]][int(Global.specific_definition.is_empty())] + Global.all_physics_definitions[definitions[quiz_index]][local_language][1] + [".", "。", ".", "."][local_language])
	quiz_number.text = str(quiz_index + 1) + "/" + str(definitions.size())
	previous_button.text = ["PREVIOUS", "返回", "PATAH BALIK", "திரும்ப"][local_language]
	next_button.text = ["NEXT", "下一个", "SETERUSNYA", "அடுத்தது"][local_language]
	exit_button.text = ["EXIT", "退出", "KELUAR", "வெளியேறு"][local_language]

func exit() -> void:
	if Global.specific_definition.is_empty():
		get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")
	else:
		Global.specific_definition = ""
		get_tree().change_scene_to_file("res://Scenes/preview.tscn")

func star() -> void:
	if definitions[quiz_index] not in Database.data.star_definitions:
		Database.data.star_definitions.append(definitions[quiz_index])
	else:
		Database.data.star_definitions.erase(definitions[quiz_index])
	Database.save_data()
	
	update_star()

func update_star() -> void:
	if definitions[quiz_index] in Database.data.star_definitions:
		star_button.self_modulate = Color.YELLOW
	else:
		star_button.self_modulate = Color.WHITE

func update_language():
	language_option.selected = local_language

func toggle_language(index: int):
	@warning_ignore("int_as_enum_without_cast")
	local_language = index
	
	update_quiz()
