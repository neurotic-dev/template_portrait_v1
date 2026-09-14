extends Control

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
	base_button.queue_free()
