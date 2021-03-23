extends Node2D

var moving_left = false
var moving_right = false

func _ready():
	pass

func _process(delta):
	if moving_left:
		print("MOVI PRA ESQUERDA PORRAAAAAAAAAAAAAAAAAA")
		position.x = min(position.x - 10.0 * delta, 0)
	elif moving_right:
		print("CORREEE PRA DIREITA QUE O CORNO TA PUTOKKKKKKKKKKKK")
		position.x = max(position.x + 10.0 * delta, 683)

func _on_MainResButton_pressed():
	get_tree().change_scene("res://ResScenes/MainResScene.tscn")


func _on_LeftArea_mouse_entered():
	print("kk to indo pra esquerda")
	moving_left = true

func _on_RightArea_mouse_entered():
	print("kk to indo pra direita")
	moving_right = true

func _on_LeftArea_mouse_exited():
	print("kk to indo pra esquerda mais n")
	moving_left = false

func _on_RightArea_mouse_exited():
	print("kk to indo pra direita mais n")
	moving_right = false
