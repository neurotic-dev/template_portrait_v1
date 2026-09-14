extends Node2D

@onready var num = $Num

func _ready() -> void:
	var list = num.get_list()
	for key in list.keys():
		create_upgrader(key, "base", list[key])
	_on_num_update()


func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("click"):
		$Notifier.notify("+1", 2.0, null, get_global_mouse_position())

func _on_num_update() -> void:
	$Label.text = get_info("base")

	for each in $ScrollContainer/Upgrades.get_children():
		var key = str(each.name)
		each.get_node("Tier").text = key + ": Lvl " + str(num.ups[key][num.AUTOGEN_LVL])
		each.get_node("Second").text = "+"+str(num.getname(num.ups[key][num.AUTOGEN_INCRAMOUNT]))+"/sec"
		each.get_node("Second2").text = "+"+str(num.getname(num.ups[key][num.AUTOGEN_CINCRAMOUNT]))+"/click"
		each.get_node("Label4").text = "Cost: " + str(num.getname(num.ups[key][num.AUTOGEN_COST])) + " " + num.ups[key][num.AUTOGEN_COSTNAME]
		each.get_node("Label2").text = "Cost: " + str(num.getname(num.ups[key][num.AUTOGEN_INCRCOST])) + " " + num.ups[key][num.AUTOGEN_INCRCOSTNAME]
		each.get_node("Label3").text = "Cost: " + str(num.getname(num.ups[key][num.AUTOGEN_CLICKCOST])) + " " + num.ups[key][num.AUTOGEN_CLICKCOSTNAME]

func create_upgrader(_key, _cur, _args={}):
	num.create_autogen(_key, _cur,_args)
	var up = $Upgrader.duplicate()
	$ScrollContainer/Upgrades.add_child(up)
	up.name = _key
	up.get_node("Level").hide()
	up.get_node("Label4").hide()
	#up.get_node("Level").connect("pressed", Callable(self, "_on_upgrader_lvlr").bind(_key))
	up.get_node("Second").connect("pressed", Callable(self, "_on_upgrader_incr").bind(_key))
	up.get_node("Second2").connect("pressed", Callable(self, "_on_upgrader_cincr").bind(_key))
	_on_num_update()

func _on_upgrader_lvlr(_key):
	var can_Buy = num.buy_autogen_upgrade(_key, false, num.AUTOGEN_COST)
	if can_Buy == true:
		num.buy_autogen_upgrade(_key, true, num.AUTOGEN_COST)
		_on_num_update()
	
func _on_upgrader_incr(_key):
	var can_Buy = num.buy_autogen_upgrade(_key, false, num.AUTOGEN_INCRCOST)
	if can_Buy == true:
		num.buy_autogen_upgrade(_key, true, num.AUTOGEN_INCRCOST)
		_on_num_update()
	
func _on_upgrader_cincr(_key):
	var can_Buy = num.buy_autogen_upgrade(_key, false, num.AUTOGEN_CLICKCOST)
	if can_Buy == true:
		num.buy_autogen_upgrade(_key, true, num.AUTOGEN_CLICKCOST)
		_on_num_update()

func _on_button_pressed() -> void:
	num.click("v1")

func get_info(_num):

	if num.arr.has(_num):
		var amount = num.getname(num.arr[_num])
		var persec = Big.new(0)
		var perclick = Big.new(0)
	
		for key in num.ups.keys():
			if num.ups[key][num.AUTOGEN_NAME]:
				persec.plusEquals(num.ups[key][num.AUTOGEN_AMOUNT])
				perclick.plusEquals(num.ups[key][num.AUTOGEN_CLICK])
		
		return str(amount) + " (+" + num.getname(persec) + "/s)      [+" + num.getname(perclick) + " per click]"
		
	return "0 (+0/s) [+0/c]"

func _on_save_pressed() -> void:
	num.save_arr()

func _on_load_pressed() -> void:
	num.load_arr()
