extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_ReadyButton_pressed():
	if $CutsceneButton:
		get_tree().change_scene("res://CutScene.tscn")
	else:
		get_tree().change_scene("res://MainResScene.tscn")
