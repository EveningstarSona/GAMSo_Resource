extends KinematicBody2D


# Declare member variables here. Examples:
var speed = 100
var movement = Vector2.ZERO

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	movement = Vector2.ZERO
	if Input.is_action_pressed("Walk_down"):
		movement.y += speed
	if Input.is_action_pressed("Walk_up"):
		movement.y -= speed
	if Input.is_action_pressed("Walk_left"):
		movement.x -= speed
	if Input.is_action_pressed("Walk_right"):
		movement.x += speed
	move_and_slide(movement, Vector2.UP)
	


func _on_Button_pressed():
	position = Vector2(0, 0)
