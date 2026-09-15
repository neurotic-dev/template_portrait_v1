extends Control

func _ready() -> void:
	$MarginContainer3/Continue.connect("pressed", Callable(self, "_on_continue"))

func _on_continue() -> void:
	if $AnimationPlayer.is_playing() == false:
		Globals.change_scene(Globals.path_menu)
		
		
