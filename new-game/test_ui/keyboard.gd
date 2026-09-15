extends Control

signal text_entered

@onready var KEY_CONTAINER = $key_container
@onready var base_button = $Button

var key_dict = {
	"0" : ["1","2","3","4","5","6","7","8","9","-"],
	"1" : ["q","w","e","r","t","y","u","i","o","p"],
	"2" : ["a","s","d","f","g","h","j","k","l"],
	"3" : ["z","x","c","v","b","n","m"]
}

func _ready() -> void:
	for each in key_dict.keys():
		var a_node = KEY_CONTAINER.get_node(each)
		for b in a_node.get_children():
			if b is Button:
				b.queue_free()
		for k in key_dict[each]:
			var n_button = base_button.duplicate()
			n_button.text = k
			a_node.add_child(n_button)
			n_button.name = k
			n_button.connect("pressed",button_pressed.bind(n_button.name))
	base_button.queue_free()



func button_pressed(_key) -> void:
	$LineEdit.insert_text_at_caret(_key)

func _on_clear_pressed() -> void:
	$LineEdit.clear()

func _on_space_pressed() -> void:
	$LineEdit.insert_text_at_caret(" ")

func _on_backspace_pressed() -> void:
	$LineEdit.delete_char_at_caret()


func _on_enter_pressed() -> void:
	emit_signal("text_entered",$LineEdit.text)
	$LineEdit.clear()
