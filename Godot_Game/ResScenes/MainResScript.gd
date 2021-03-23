extends Node2D



func _on_KitchenButton_pressed():
	get_tree().change_scene("res://ResScenes/KitchenScene.tscn")


func _on_CustomersButton_pressed():
	get_tree().change_scene("res://ResScenes/CustomersScene.tscn")
