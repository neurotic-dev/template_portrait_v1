extends Control

@onready var upnode = $newupgrades
@onready var template = $Panel

func _ready() -> void:
	show_upgrades()

func show_upgrades():
	for each in upnode.get_children():
		each.queue_free()
		
	for i in range(0, 3):
		var newpanel = template.duplicate()
		upnode.add_child(newpanel)
		newpanel.get_node("Button").connect("pressed", Callable(self, "_on_pressed").bind(newpanel, i))
		
		newpanel.global_position = upnode.global_position
		newpanel.global_position.x += (template.get_rect().size.x + 25) * i
		
		var final_pos = newpanel.global_position
		newpanel.global_position.y -= 1000
		newpanel.modulate = Color(1,1,1,0)
		
		var tween = get_tree().create_tween()
		tween.tween_property(newpanel, "modulate", Color(1,1,1,1), 0.3)
		tween.tween_property(newpanel, "global_position", final_pos, 0.3).set_trans(tween.TRANS_SPRING)
		
		await get_tree().create_timer(0.15).timeout

func _on_pressed(panel, idx):
	for each in upnode.get_children():
		if each != panel:
			var tween = get_tree().create_tween()
			tween.tween_property(each, "modulate", Color(1,1,1,0), 0.3)
			tween.tween_callback(each.queue_free)
			
			await get_tree().create_timer(0.15).timeout
			
	var tween = get_tree().create_tween()
	var final_pos = Vector2(640-(template.get_rect().size.x/2), panel.global_position.y)
	tween.parallel().tween_property(panel, "global_position", final_pos, 1)
	tween.parallel().tween_property(panel, "scale", Vector2(1.2,1.2), 1)
	tween.chain().tween_property(panel, "modulate", Color(1,1,1,0), 0.4)
	tween.tween_callback(panel.queue_free)
	print(idx)
