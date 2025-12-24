extends CanvasLayer

const COMMAND_LABEL = "press space"

@onready var ui: CanvasLayer = self
@onready var prompt: Label = $MarginContainer/PanelContainer/prompt
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	ui.visible = false
	EventControls.connect("interactible", on_interactible)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func on_interactible(node: Node, label: String) -> void:
	if node != null:
		ui.visible = true
		prompt.text = COMMAND_LABEL +label
		print("im so bored")
	else:
		ui.visible = false
