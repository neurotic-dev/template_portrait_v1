extends Control

signal finished
signal emotion_detected

signal talking

@export var auto = false

var char_speed = 0.05
var codes = ["[center]", "\n", "[color=#fff125]", "[/color]", "[animation]"]

var current_tween = null

var story : Dictionary

var active_arc : String
var active_key : String
var prev_key : String

var content_arr = []
var content_idx = 0
var choice_outcome = null
var choice_response = false

var is_choices_active = false
var is_active_speaker = false

@onready var content_node = $content
@onready var reader = $dialogue_reader

func _ready() -> void:
#	$UI/BaseClick.connect("pressed", Callable(self, "_on_next_click"))
	#content_node.visible_characters = 0
	pass
	
func init_next(_key, from_last=false):
	reset_content()
	if active_key != null:
		prev_key = active_key
	reader.init_read(reader.init_class, _key)
	active_key = _key
	content_arr = reader.get_story_content()
	if from_last == true:
		content_idx = content_arr.size()-1
	play_content()

func reset_content():
	content_arr = []
	content_idx = 0

func init_content(_content: Array):
	reset_content()
	content_arr = _content
	play_content()

func content_end():
	finished.emit()

func _on_next_click():
	next_slide()

func _input(_event: InputEvent) -> void:
	if Input.is_action_just_pressed("ui_right") or Input.is_action_just_pressed("ui_accept"):
		next_slide()

func next_slide():
	if is_active_speaker == true:
		if current_tween != null:
			current_tween.kill()
			content_node.visible_ratio = 1.0
			tween_done()
		else:
			if content_idx < content_arr.size()-1:
				content_idx += 1
				play_content()
			else:
				content_end()

func play_content():
	var content = content_arr[content_idx]
	content_node.visible_characters = 0
	content = filter_content(content)
	content_node.text = content
	tween_content(content)
	emit_signal("talking",true)

func filter_content(_content: String) -> String:
	var emotion = _content.get_slice("||emotion:", 1)
	_content = _content.get_slice("||emotion:", 0)
	if _content != emotion:
		emotion_detected.emit(emotion)
	return _content

func tween_content(_content):
	if current_tween != null:
		current_tween.kill()
	var length = get_length(_content)
	var tween = get_tree().create_tween()
	tween.tween_property(content_node, "visible_characters", length, length * char_speed)
	tween.tween_callback(self.tween_done)
	current_tween = tween

func tween_done():
	emit_signal("talking",false)
	current_tween = null

func get_length(text):
	var t = text
	for each in codes:
		t = t.replace(each, "")
	return t.length()
