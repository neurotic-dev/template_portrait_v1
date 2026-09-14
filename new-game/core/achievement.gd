extends Control

var data = {}

@onready var template = $Template
@onready var grid = $Panel/ScrollContainer/GridContainer

func _ready() -> void:
	randomize()
	for i in range(0, 30):
		var title = "Achievement #" + str(i)
		var count = 1
		if randi_range(0, 4) != 0:
			count = randi_range(2, 10)
		var desc = "Some random achievement"
		data["t" + str(i)] = {"title":title,"count":count,"desc":desc,"amount":0}

	create_grid()
	

func create_grid():
	for each in grid.get_children():
		each.queue_free()
	
	for each in data.keys():
		var arr = data[each]
		var t = template.duplicate()
		t.get_node("Button").connect("pressed", Callable(self, "cell_clicked").bind(each, t))
		grid.add_child(t)
		update_cell(t, arr)
		
func update_cell(t, arr):
	t.get_node("Title").text = arr["title"]
	t.get_node("Progress").text = str(arr["amount"]) + " / " + str(arr["count"])
	t.get_node("ProgressBar").value = arr["amount"]
	t.get_node("ProgressBar").max_value = arr["count"]
	t.get_node("Desc").text = arr["desc"]

func cell_clicked(key, cell):
	data[key]["amount"] += 1
	data[key]["amount"] = clamp(data[key]["amount"], 0, data[key]["count"])
	update_cell(cell, data[key])
