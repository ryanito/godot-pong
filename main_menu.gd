extends CenterContainer

@onready var one_player_button = %OnePlayerButton
@onready var two_player_button = %TwoPlayerButton
@onready var quit_button = %QuitButton


func _on_one_player_button_pressed():
	Global.number_of_players = 1
	get_tree().change_scene_to_file("res://arena.tscn")


func _on_two_player_button_pressed():
	Global.number_of_players = 2
	get_tree().change_scene_to_file("res://arena.tscn")


func _on_quit_button_pressed():
	get_tree().quit()
