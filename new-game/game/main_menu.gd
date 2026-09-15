extends Control

@onready var ab = $action_box
@onready var settings = $settings

func _ready() -> void:
	ab.connect("done", Callable(self, "_action_done"))
	$MarginContainer/bot_left/Menu/NewGame.connect("pressed", Callable(self, "_on_new_game"))
	$MarginContainer/bot_left/Menu/LoadGame.connect("pressed", Callable(self, "_on_load_game"))
	$MarginContainer/bot_left/Menu/Settings.connect("pressed", Callable(self, "_on_settings"))
	$MarginContainer/bot_left/Menu/QuitGame.connect("pressed", Callable(self, "_on_quit"))
	$MarginContainer/bot_left/VersionLabel.text = "v" + Globals.version_code + " (" + Globals.version_name + " version)"
	$MarginContainer/bot_left/Menu/LoadGame.disabled = !Save.exists()
	
func newgame():
	Save.update_save(true)
	initialize_game()
	
func loadgame():
	Save.continue_save()
	initialize_game()
	
func initialize_game():
	$MarginContainer/bot_left/Menu/LoadGame.disabled = !Save.exists()
	Globals.change_scene("res://test_ui/test_hud.tscn")
	
func _on_new_game():
	if Save.exists() == true:
		ab.show_action("newgame", 'Starting a new game will delete your current save file. \nAre you sure you want to start a new game?')
	else:
		newgame()
	
func _on_load_game():
	loadgame()
	
func _on_settings():
	settings.show_settings()
	
func _on_quit():
	get_tree().quit()
	
func _action_done(_code:String,_action:bool):
	if _code == "newgame":
		if _action == true:
			newgame()
