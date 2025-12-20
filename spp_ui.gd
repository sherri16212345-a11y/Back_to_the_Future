extends Control

@onready var label = $Label

func _ready():
	EventControls.connect ("spp_collected", on_event_spp_collected) # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func on_event_spp_collected(value: int):
	label.text = str(value)
	print("received2")
