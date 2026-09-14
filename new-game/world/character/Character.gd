extends CharacterBody2D

const IDLE = "idle"
const WALK = "walk"
const FRONT = "front"
const BACK = "back"
const SRIGHT = "right"
const SLEFT = "left"

var up = false
var down = false
var right = false
var left = false

@export var speed := 500
var state = "idle"
var dir = "front"

var anim_name = "idle_front"

var target = null

var paused = false

func _ready():
	pass # Replace with function body.

func _input(event):
	if paused == false:
		up = Input.is_action_pressed("ui_up")
		down = Input.is_action_pressed("ui_down")
		left = Input.is_action_pressed("ui_left")
		right = Input.is_action_pressed("ui_right")

func _physics_process(delta):
	var velocity = Vector2(0,0)
	
	if left == true: 
		velocity.x -= speed * delta
	elif right == true:
		velocity.x += speed * delta
	elif up == true:
		velocity.y -= speed * delta
	elif down == true:
		velocity.y += speed * delta
	
	if left == true or right == true or up == true or down == true:
		state = WALK
	else:
		state = IDLE
	
	if velocity.y < 0:
		dir = BACK
		$Visual.scale.x = 1
	elif velocity.x != 0:
		if velocity.x < 0:
			$Visual.scale.x = -1
			dir = SLEFT
		else:
			$Visual.scale.x = 1
			dir = SRIGHT
	elif velocity.y > 0:
		dir = FRONT
		$Visual.scale.x = 1
	
	anim_name = state+"_"+dir
	$Visual/Sprite.play(anim_name)
	$Detector/Anim.play(dir)
	
	move_and_collide(velocity)
	
	$Label.text = "Dir: " + dir + "\nState: " + state + "\n"
	var targetname = "None"
	if target:
		targetname = str(target.code)
	$Label.text = $Label.text + "Target: " + str(targetname)

func _on_Detector_body_entered(body):
	if body != self:
		target = body

func _on_Detector_body_exited(body):
	if body == target:
		target = null
