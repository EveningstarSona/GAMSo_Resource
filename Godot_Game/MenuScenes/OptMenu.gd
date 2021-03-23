extends Node2D

func _ready():
	visible = false

func _process(delta):
	if Input.is_action_pressed("ui_cancel"):
		visible = true


func _on_Continue_pressed():
	visible = false


func _on_Options_pressed():
	print("Fazer opçoes lesk")


func _on_Exit_pressed():
	get_tree().quit()
