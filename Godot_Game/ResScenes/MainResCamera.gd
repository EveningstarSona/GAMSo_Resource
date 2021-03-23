extends Camera2D

var moving_left = false
var moving_right = false
var movimento = 12
func _ready():
	pass

func _process(delta):
	if moving_left and not position.x < 686:
		print("MOVI PRA ESQUERDA PORRAAAAAAAAAAAAAAAAAA")
		position.x -= movimento
	elif moving_right and not position.x > (2048 - 693):
		print("CORREEE PRA DIREITA QUE O CORNO TA PUTOKKKKKKKKKKKK")
		position.x += movimento

func _on_RightArea_mouse_entered():
	moving_right = true


func _on_RightArea_mouse_exited():
	moving_right = false


func _on_LeftArea_mouse_entered():
	
	moving_left = true

func _on_LeftArea_mouse_exited():
	
	moving_left = false
