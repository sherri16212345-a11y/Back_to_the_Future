extends CanvasLayer

const options: PackedScene = preload ('res://scenes/loading screen.tscn')

@onready var new_game = $Control/MarginContainer/innerbg/VBoxContainer/ButtonContainer/Button
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	load_main_menu
	
func load_main_menu():
	new_game.connect('pressed', on_new_game_pressed)
	
func on_new_game_pressed() -> void:
	var options = self.get_parent()
	self.queue_free()
	var world_scene = options
	options.add_child(world_scene)
	print("newgame")
