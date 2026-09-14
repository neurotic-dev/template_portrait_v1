extends Control

@onready var panel = $ChoicePanel
@onready var anim = $ChoicePanel/AnimationPlayer
@onready var choicebox = $ChoiceBox
@onready var grid = $ChoicePanel/ScrollContainer/CenterContainer/GridContainer


var ingredients = [
	["arabica", "robusta", "barako"],
	["whole", "skim", "oat", "soy", "almond", "condensed"],
	["sugar", "honey", "brown sugar syrup", "vanilla", "caramel"],
	["cinnamon", "cocoa powder", "nutmeg", "whipped cream"],
	["filtered", "mineral", "distilled", "saltwater"],
	["hot", "iced"]
]

var recipe = []
var recipe_idx = 0
var recipe_max = 6

func _ready() -> void:
	recipe_max = ingredients.size()-1
	anim.play("show")
	update_choices()

func update_choices():
	clear_grid()
	for each in ingredients[recipe_idx]:
		create_choice(each)

func clear_grid():
	for each in grid.get_children():
		each.queue_free()

func create_choice(_name):
	var choice = choicebox.duplicate()
	choice.get_node("Label").text = _name
	choice.size_flags_horizontal = Control.SIZE_SHRINK_CENTER
	choice.size_flags_vertical = Control.SIZE_SHRINK_CENTER
	grid.add_child(choice)
	choice.get_node("Button").connect("pressed", Callable(self, "_on_choice").bind(choice, _name))
	
func _on_choice(_button, _name):
	recipe.append(_name)
	anim.play("hide")

func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	if anim_name == "hide":
		if recipe_idx < recipe_max:
			recipe_idx += 1
			update_choices()
			anim.play("show")
