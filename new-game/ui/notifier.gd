extends Control

var notif = preload("res://ui/notif.tscn")

func notify(_content, duration=2.0, _targetnode=null, _targetglobalpos=null):
	var n = notif.instantiate()
	n.content = _content
	n.duration = duration
	if _targetglobalpos:
		n.global_position = _targetglobalpos
	if _targetnode:
		_targetnode.add_child(n)
	else:
		add_child(n)
	
	
