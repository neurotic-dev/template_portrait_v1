extends Control

@onready var pagination = $HBoxContainer
@onready var grid = $GridContainer
@onready var cell = $Cell

var pages = []
var page_idx = 0

var test_data = []

func _ready() -> void:

	for i in range(0, 300):
		test_data.append(["word" + str(i)])
	
	for each in pagination.get_children():
		each.connect("pressed", Callable(self, "_on_page_pressed").bind(each))
	
	load_pages()
	update_page()
	update_pagination()

	
func _on_page_pressed(_page):
	page_idx = int(_page.name)
	update_page()
	update_pagination()

func update_page():
	for each in grid.get_children():
		each.queue_free()
	var revs = pages[page_idx]
	for rev in revs:
		var c = cell.duplicate()
		grid.add_child(c)
		c.get_node("Label").text = rev[0]

func load_pages():
	var i = 0
	var p = 0
	var inv = test_data
	pages.clear()
	pages.append([])
	for info in inv:
		pages[p].append(info)
		i += 1
		if i > 11:
			p += 1
			pages.append([])
			i = 0

func update_pagination():
	for each in pagination.get_children():
		each.hide()
		each.name = "x"
		each.text = "x"
		
	if pages.size() > pagination.get_child_count():
	# First 3 buttons (Fixed)
		pagination.get_child(0).name = str(0)
		pagination.get_child(1).name = str(1)
		pagination.get_child(2).name = str(2)
		
		# Middle 3 buttons (Sliding Window)
		# This keeps the window centered on page_idx but bounded by indices 3 and size-4
		var mid = clamp(page_idx, 4, pages.size() - 5)
		pagination.get_child(3).name = str(mid - 1)
		pagination.get_child(4).name = str(mid)
		pagination.get_child(5).name = str(mid + 1)
		
		# Last 3 buttons (Fixed)
		var last_idx = pagination.get_child_count()
		pagination.get_child(last_idx - 3).name = str(pages.size() - 3)
		pagination.get_child(last_idx - 2).name = str(pages.size() - 2)
		pagination.get_child(last_idx - 1).name = str(pages.size() - 1)
		
		for each in pagination.get_children():
			each.text = each.name
			each.show()
	else:
		for i in range(0, pages.size()):
			pagination.get_child(i).name = str(i)
			pagination.get_child(i).text = str(i)
			pagination.get_child(i).show()
