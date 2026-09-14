extends Node2D

func _ready() -> void:
	init_ui()
	
func init_ui():
	var genders = ["female ghost", "male ghost"]
	var ages = ["18","20","25","30","35","40","50","100+","300+","500+","1000+","5000+","10000+"]
	var death = ["tragically", "heroically", "naturally", "mysteriously", "brutally"]
	for each in genders:
		$ui/Panel/Player.add_item(each)
		$ui/Panel/Player2.add_item(each)
	for each in ages:
		$ui/Panel/Age.add_item(each)
		$ui/Panel/Age2.add_item(each)
	for each in death:
		$ui/Panel/Died.add_item(each)
