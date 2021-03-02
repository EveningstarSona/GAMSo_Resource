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


func _on_NewGameButton_pressed():
	get_tree().change_scene("res://PromptTutorialScene.tscn")


func _on_LoadGameButton_pressed():
	get_tree().change_scene("res://SavesScene.tscn")


func _on_OptionsButton_pressed():
	get_tree().change_scene("res://ConfigMenuScene.tscn")
