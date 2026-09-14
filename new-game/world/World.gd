extends Node2D

@onready var cam = $Camera2D
@onready var dialogue = $HUD/dialogue_ui

@export var player_path : NodePath

var player = null

func _ready():
	player = get_node_or_null(player_path)

func _input(event):
	if Input.is_action_just_pressed("ui_accept") and player:
		if player.target != null and dialogue.active == false and player.state == player.IDLE and player.paused == false:
			player.paused = true
			var convo_arr = ["fuck you1", "bitch"]
			var outcome_key = ""
			var filters = {"bitch":"fuck"}
			var choices = {"choice1": {"text":"First choice","outcome":"none"},"choice2": {"text":"2nd choice","outcome":"none"}}
			dialogue.init_talk(convo_arr, outcome_key, filters, choices)

func _process(delta):
	if player:
		cam.global_position = player.global_position

func _on_dialogue_ui_finished(_outcome) -> void:
	if player:
		player.paused = false
	dialogue.hide_dialogue()
