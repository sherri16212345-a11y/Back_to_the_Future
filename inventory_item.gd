@tool

extends Node2D

@export var item_name: StringName
@export var item_texture: Texture2D
@export var item_effect: StringName

@onready var icon: Sprite2D = $Sprite2D
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if not Engine.is_editor_hint():
		EventControls.interaction.connect(on_interaction)
		icon.texture = item_texture # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float):
	if Engine.is_editor_hint():
		icon.texture = item_texture
		
func on_interaction(node: Node):
	if node == self:
		var item: Dictionary = {
			"quantity": 1,
			"name": item_name,
			"texture": item_texture,
			"effect": item_effect,
		}

		EventControls.emit_signal("item_picked_up", item)
		self.queue_free()
