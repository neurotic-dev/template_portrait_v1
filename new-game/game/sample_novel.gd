extends Node2D

@onready var dialogue_ui = $dialogue_ui

func _ready() -> void:
	var story = DScript.new().story
	dialogue_ui.initialize(story)
	dialogue_ui.init_start("sample1", "prologue")
	dialogue_scene()

func _on_dialogue_ui_finished(_outcome) -> void:
	if dialogue_ui.reader.is_end("sample1", _outcome) == true:
		Globals.change_scene(Globals.path_menu)
	else:
		dialogue_ui.init_next(_outcome)
		dialogue_scene()
	
func dialogue_scene():
	var path = "res://assets/test_scenes/" + dialogue_ui.active_arc + "/" + dialogue_ui.active_key + ".jpg"
	scene_change(path)
	$imgpath.text = path + " exists:" + str(ResourceLoader.exists(path))

func scene_change(path):
	if ResourceLoader.exists(path):
		$bg.texture = load(path)
	else:
		push_error(path, " not found!")

func _on_main_menu_pressed() -> void:
	Globals.change_scene(Globals.path_menu)
