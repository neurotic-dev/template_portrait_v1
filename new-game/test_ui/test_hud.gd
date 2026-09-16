extends Control

@onready var sprite_anim : AnimatedSprite2D = $character_container/clip/animatedsprite
var keyboard_showing : bool = false
var dialogue_showing : bool = false

func _on_cm_keyboard_pressed() -> void:
	if keyboard_showing == false and dialogue_showing == false:
		$keyboard_container.show()
		keyboard_showing = true
		$keyboard_container/Keyboard.activate_cursor()

func _on_keyboard_text_entered(_text) -> void:
	dialogue_showing = true
	keyboard_showing = false
	$dialogue_container/dialogue.is_active_speaker = true
	var content = DScript.sample_story["test"]
	$dialogue_container/dialogue.init_content(content)
	$dialogue_container.show()
	$keyboard_container.hide()

func _on_dialogue_finished() -> void:
	dialogue_showing = false
	$dialogue_container.hide()

func _on_menu_pressed() -> void:
	Globals.change_scene("res://game/main_menu.tscn")

func _on_dialogue_talking(_taking: bool) -> void:
	if _taking == true:
		sprite_anim.play("talk")
	else:
		sprite_anim.play("idle")
