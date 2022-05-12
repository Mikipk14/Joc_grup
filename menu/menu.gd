extends Node2D

func _ready():
	pass

func _process(delta):
	pass

func _on_QuitButton_pressed():
	get_tree().quit()


func _on_settingsButton_pressed():
	get_tree().change_scene("res://menu/scenes/main_settings.tscn")


func _on_PlayBTN_pressed():
	get_tree().change_scene("res://scenes/main.tscn")
