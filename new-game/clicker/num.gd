extends Node

signal update

# Save name
const SAV = "idle"

const AUTOGEN_KEY = "key" # upgrade key
const AUTOGEN_NAME = "name" # currency name gained per sec or per click
const AUTOGEN_LVL = "lvl" # upgrade level
const AUTOGEN_SECS = "secs" # upgrade timer
const AUTOGEN_AMOUNT = "amount" # amount to gain per sec
const AUTOGEN_COST = "cost" # cost per level upgrade 
const AUTOGEN_COSTNAME = "costname" # currency name of cost per level upgrade
const AUTOGEN_COSTINC = "costincrease" # increase to cost per level upgrader per upgrade
const AUTOGEN_INCR = "increment" # increase to AUTOGEN_AMOUNT per upgrade
const AUTOGEN_INCRAMOUNT = "incrementamount" # increase to AUTOGEN_INCR per upgrade
const AUTOGEN_INCRCOST = "incrementcost" # cost of AUTOGEN_INCR upgrade
const AUTOGEN_INCRCOSTNAME = "incrementcostname" # currency name of AUTOGEN_INCR upgrade
const AUTOGEN_INCRCOSTMUL = "incrementcostmultiplier" # cost multipler per upgrade of AUTOGEN_INCR
const AUTOGEN_CLICK = "click" # gain per click
const AUTOGEN_CINCR = "clickincrement" # increaset to AUTOGE_CLICK per upgrade
const AUTOGEN_CINCRAMOUNT = "clickincrementamount" # increase to AUTOGEN_CINCR per upgrade
const AUTOGEN_CLICKCOST = "clickincrcost" # cost of upgrading AUTOGEN_CINCR
const AUTOGEN_CLICKCOSTNAME = "clickincrcostname" # currency name of upgradeing AUTOGEN_CINCR
const AUTOGEN_CLICKCOSTMUL = "clickincrcostmultipler" # cost multipler per upgrade of AUTOGEN_CINCR
 
var arr = {}
var ups = {}
var prestige := 1

var autogen_big = []

func _ready() -> void:
	Big.setSuffixSeparator(" ")
	Big.setDecimalSeparator(".")
	Big.setDynamicDecimals(true)
	Big.setSmallDecimals(0)
	var testarr = def_arr()
	for key in testarr.keys():
		if typeof(testarr[key]) == 24:
			autogen_big.append(key)
	
func def_arr():
	return {
			AUTOGEN_SECS: 1.0, 
			AUTOGEN_LVL: 1, 
			AUTOGEN_AMOUNT: Big.new(0), 
			AUTOGEN_COST: Big.new(5),
			AUTOGEN_COSTNAME: null,
			AUTOGEN_COSTINC: 1.5, 
			AUTOGEN_INCR: Big.new(1), 
			AUTOGEN_INCRAMOUNT: Big.new(5), 
			AUTOGEN_INCRCOST: Big.new(5), 
			AUTOGEN_INCRCOSTNAME: null,
			AUTOGEN_INCRCOSTMUL: 2.0, 
			AUTOGEN_CLICK: Big.new(0), 
			AUTOGEN_CINCR: Big.new(1),
			AUTOGEN_CINCRAMOUNT: Big.new(3), 
			AUTOGEN_CLICKCOST: Big.new(5),
			AUTOGEN_CLICKCOSTNAME: null,
			AUTOGEN_CLICKCOSTMUL: 2.5,
		}
	
func getname(_big):
	var f = _big.toAA().split(" ")
	return f[0] + "" + f[1].to_upper()
	
func create_upgrader(_keyname, _num, arr={}):
	var farr = def_arr()
	farr[AUTOGEN_NAME] = _num
	farr[AUTOGEN_KEY] = _keyname
	if arr.is_empty() == false:
		for key in arr.keys():
			farr[key] = arr[key]
	for key in farr.keys():
		if [AUTOGEN_COSTNAME, AUTOGEN_CLICKCOSTNAME, AUTOGEN_INCRCOSTNAME].has(key) and farr[key] == null:
			farr[key] = farr[AUTOGEN_NAME]
	ups[_keyname] = farr
	
func create_autogen(_keyname, _num, arr={}): # automatic generator
	create_upgrader(_keyname, _num, arr)
	create(_num, 1)
	
	# Create Timer
	var timer = Timer.new()
	timer.connect("timeout", Callable(self, "_on_timer_tick").bind(ups[_keyname][AUTOGEN_KEY]))
	timer.add_to_group("autogen")
	add_child(timer)
	timer.start(ups[_keyname][AUTOGEN_SECS])
	
func update_autogen(_key):
	if ups.has(_key):
		ups[_key][AUTOGEN_AMOUNT] = Big.new(ups[_key][AUTOGEN_INCR].times(ups[_key][AUTOGEN_LVL]).toScientific())
		ups[_key][AUTOGEN_CLICK] = Big.new(ups[_key][AUTOGEN_CINCR].times(ups[_key][AUTOGEN_LVL]).toScientific())
	
func buy_autogen_upgrade(_key, _buy:bool=false,_costkey=AUTOGEN_COST, _lvl=1): # _buy=false means its only a checker
	if ups.has(_key):
		var costname = ups[_key][AUTOGEN_COSTNAME]
		var cost = ups[_key][_costkey]
		if arr.has(costname):
			if arr[costname].isGreaterThanOrEqualTo(cost):
				if _buy == true:
					minus_amount(costname, cost)
					if _costkey == AUTOGEN_COST:
						upgrade_autogen_lvl(_key, _lvl)
					elif _costkey == AUTOGEN_INCRCOST:
						upgrade_autogen_incr(_key)
					elif _costkey == AUTOGEN_CLICKCOST:
						upgrade_autogen_cincr(_key)
					else:
						push_error("unknown ", _costkey)
				return true
			else:
				return false
		else:
			push_error("unknown costname: ", costname)
	else:
		push_error("unknown key: ", _key)
	return null
	
func upgrade_autogen_lvl(_key, _lvl:int=1):
	if ups.has(_key):
		ups[_key][AUTOGEN_LVL] += _lvl
		ups[_key][AUTOGEN_COST].timesEquals(ups[_key][AUTOGEN_COSTINC])
		update_autogen(_key)
		
func upgrade_autogen_incr(_key):
	if ups.has(_key):
		ups[_key][AUTOGEN_INCR].plusEquals(ups[_key][AUTOGEN_INCRAMOUNT].times(prestige))
		ups[_key][AUTOGEN_INCRCOST].timesEquals(ups[_key][AUTOGEN_INCRCOSTMUL])
		update_autogen(_key)
		
func upgrade_autogen_cincr(_key):
	if ups.has(_key):
		ups[_key][AUTOGEN_CINCR].plusEquals(ups[_key][AUTOGEN_CINCRAMOUNT].times(prestige))
		ups[_key][AUTOGEN_CLICKCOST].timesEquals(ups[_key][AUTOGEN_CLICKCOSTMUL])
		update_autogen(_key)
	
func click(_name):
	add_amount(ups[_name][AUTOGEN_NAME], ups[_name][AUTOGEN_CLICK])
	emit_signal("update")
	
func _on_timer_tick(_name):
	add_amount(ups[_name][AUTOGEN_NAME], ups[_name][AUTOGEN_AMOUNT])
	emit_signal("update")
	
func save_arr() -> void:
	var oarr = arr.duplicate(true)
	var oups = ups.duplicate(true)
	var _arr = {}
	for each in oarr.keys():
		_arr[each] = str(oarr[each].toPlainScientific())
	var _ups = {}
	for key in oups.keys():
		var e = oups[key].duplicate(true)
		var f = {}
		for val in e.keys():
			if autogen_big.has(val):
				f[val]=e[val].toPlainScientific()
			else:
				f[val]=e[val]
		_ups[key] = f.duplicate(true)
	
	var data = {
		"arr": _arr,
		"ups": _ups,
		"prestige": prestige,
	}
	Save._game_save(SAV,data)
	
func load_arr() -> void:
	for each in get_tree().get_nodes_in_group("autogen"):
		each.queue_free()
		
	arr.clear()
	ups.clear()
	
	var data = Save._game_load(SAV)
	for each in data["arr"].keys():
		create(each, data["arr"][each])
	
	for key in data["ups"].keys():
		var subup = data["ups"][key].duplicate(true)
		create_autogen(subup[AUTOGEN_KEY], subup[AUTOGEN_NAME])
		for en in subup.keys():
			if autogen_big.has(en):
				subup[en] = Big.new(subup[en])
		ups[key] = subup.duplicate(true)
	
	prestige = data["prestige"]
	
func create(_name, amount=0, ex=0):
	if not arr.has(_name):
		arr[_name] = Big.new(amount,ex)
	
func add_amount(_name, _amount):
	arr[_name].plusEquals(_amount)

func minus_amount(_name, _amount):
	arr[_name].minusEquals(_amount)

func multiply_amount(_name, _amount):
	arr[_name].timesEquals(_amount)

func divide_amount(_name, _amount):
	arr[_name].dividedByEquals(_amount)

func get_list():
	# This function returns the default list of upgrades with customized info
	var arr = {}
	#arr["v1"] = {
			#AUTOGEN_AMOUNT: Big.new(0), 
			#AUTOGEN_COST: Big.new(5), AUTOGEN_INCR: Big.new(1), 
			#AUTOGEN_INCRAMOUNT: Big.new(1),AUTOGEN_INCRCOST: Big.new(20), 
			#AUTOGEN_CLICK: Big.new(1),AUTOGEN_CINCR: Big.new(1), 
			#AUTOGEN_CINCRAMOUNT: Big.new(1), AUTOGEN_CLICKCOST: Big.new(10), 
	#}
	#
	var base_cost = Big.new(5)
	var base_incr = Big.new(1)
	var base_incrcost = Big.new(30)
	var base_incramaount = Big.new(1)
	var base_cincr = Big.new(1)
	var base_cincramount = Big.new(1)
	var base_click = Big.new(0)
	var base_clickcost = Big.new(10)
	var base_amount = Big.new(0)
	var click = 1
	var mulgainsec = 1.2
	var mulgainclick = 1.2
	var mulcost = 1.05
	
	for i in range(1,200,5):
		arr["v" + str(i)] = {
				AUTOGEN_AMOUNT: Big.new(base_amount), 
				AUTOGEN_COST: Big.new(base_cost).timesEquals(i), AUTOGEN_INCR: Big.new(base_incr).timesEquals(i), 
				AUTOGEN_INCRAMOUNT: Big.new(base_incramaount).timesEquals(i),AUTOGEN_INCRCOST: Big.new(base_incrcost).timesEquals(i), 
				AUTOGEN_CLICK: Big.new(base_click),AUTOGEN_CINCR: Big.new(base_cincr), 
				AUTOGEN_CINCRAMOUNT: Big.new(base_cincramount).timesEquals(click), AUTOGEN_CLICKCOST: Big.new(base_clickcost).timesEquals(i), 
		}
		#base_cost.timesEquals(mul)
		#base_incr.timesEquals(mul)
		base_incrcost.timesEquals(mulcost)
		base_incramaount.timesEquals(mulgainsec)
		#base_cincr.timesEquals(mul)
		base_cincramount.timesEquals(mulgainclick)
		base_clickcost.timesEquals(mulcost)
		mulgainclick += 0.03
		mulgainsec += 0.05
		mulcost += 0.08
		click += 1
		
	arr["v1"][AUTOGEN_CLICK] = Big.new(1)

	#arr["v2"] = {
			#AUTOGEN_AMOUNT: Big.new(0), 
			#AUTOGEN_COST: Big.new(50), AUTOGEN_INCR: Big.new(3), 
			#AUTOGEN_INCRAMOUNT: Big.new(5),AUTOGEN_INCRCOST: Big.new(50), 
			#AUTOGEN_CLICK: Big.new(0),AUTOGEN_CINCR: Big.new(2), 
			#AUTOGEN_CINCRAMOUNT: Big.new(5), AUTOGEN_CLICKCOST: Big.new(100), 
	#}
	
	return arr
