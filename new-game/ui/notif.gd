extends Control

var content = "-1"
var duration = 2.0

func _ready() -> void:
	$Label.text = content
	var tween = get_tree().create_tween()
	tween.parallel().tween_property(self, "modulate", Color.TRANSPARENT, duration)
	tween.parallel().tween_property(self, "global_position", Vector2(global_position.x, global_position.y+20), duration)
	tween.tween_callback(self.queue_free)
