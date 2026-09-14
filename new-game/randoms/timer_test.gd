extends Node2D

var i = 0
var i2 = 0

func _ready() -> void:
	i = Big.new(0)
	for i in range(0,10000):
		var timer = Timer.new()
		timer.connect("timeout", Callable(self, "_on_timer_tick"))
		add_child(timer)
		timer.start()

func _process(delta: float) -> void:
	$FPS.text = str(Engine.get_frames_per_second()) + " fps"

func _on_timer_tick():
	i.plusEquals(Big.new(5,10))
	i2 += 1
	$Label.text = "amount: " + str(i.toPlainScientific())
	$Label2.text = "amount2: " + str(i2)
